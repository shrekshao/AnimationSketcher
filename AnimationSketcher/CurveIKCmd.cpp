#include "CurveIKCmd.h"

#include <maya/MGlobal.h>

//#include <maya/MFnPlugin.h>

#include <maya/MArgList.h>
#include <maya/MObject.h>
//
#include <maya/MPointArray.h>


#include<maya/MItDag.h>
#include<maya/MFnIkHandle.h>
#include<maya/MFnDagNode.h>
#include<maya/MFnIkSolver.h>
#include<maya/MDagPath.h>
#include<maya/MPlugArray.h>
#include<maya/MFnDependencyNode.h>

#include <maya/MFnIkEffector.h>
#include <maya/MFnIkJoint.h>

#include <maya/MSelectionList.h>

#include <vector>

using namespace std;
//#include "MyLoadFileToString.h"

bool CurveIKCmd::builtLocalSkeleton = false;

CurveIKCmd::CurveIKCmd() : MPxCommand()
{
	builtLocalSkeleton = false;
}

CurveIKCmd::~CurveIKCmd()
{
}



static MVector getPosition(MFnNurbsCurve & curve, double uVal)
{
	//MPoint minPos = MPoint(0, 0, 0);
	//MPoint maxPos = MPoint(10, 10, 10);
	//return (minPos + uVal * (maxPos - minPos));

	MPoint p;
	//curve.getPointAtParam(uVal * (double)(curve.numCVs() - 1), p);

	double u = curve.findParamFromLength(uVal * curve.length());
	curve.getPointAtParam(u, p);



	return p;
}





MStatus CurveIKCmd::doIt(const MArgList& args)
{
	MStatus stat;

	//test
	MString rootName, endEffectorName;
	MSelectionList curveList;
	for (int i = 0; i < args.length(); i++)
	{
		if (MString("-root") == args.asString(i, &stat)
			&& MS::kSuccess == stat)
		{
			rootName = args.asString(++i, &stat);
		}

		if (MString("-end") == args.asString(i, &stat)
			&& MS::kSuccess == stat)
		{
			endEffectorName = args.asString(++i, &stat);
		}
	}
	setResult("HelloWorld!");

	// 1.select curve
	MSelectionList curve_list;
	stat = MGlobal::getActiveSelectionList(curve_list);
	if (MS::kSuccess != stat) {
		return(stat);
	}
	MDagPath path;
	curve_list.getDagPath(0, path);
	MFnNurbsCurve nurbCurve(path);

	// 2. select joint and create handle
	//MGlobal::selectByName(skeletonName);
	//MSelectionList list;
	//stat = MGlobal::getActiveSelectionList(list);
	//if (MS::kSuccess != stat) {
	//	return(stat);
	//}
	//list.getDagPath(0, path);
	//MFn

	//MFnIkHandle fnHandle(it.currentItem());


	//MItDag it(MItDag::kDepthFirst, MFn::kIkHandle);
	//MFnIkHandle fnHandle(it.currentItem());
	MDagPath rootJointDagPath, leafJointDagPath;
	{
		MSelectionList list;
		MGlobal::selectByName(MString(rootName), MGlobal::kReplaceList);
		stat = MGlobal::getActiveSelectionList(list);
		list.getDagPath(0, rootJointDagPath);

		MGlobal::selectByName(MString(endEffectorName), MGlobal::kReplaceList);
		stat = MGlobal::getActiveSelectionList(list);
		list.getDagPath(0, leafJointDagPath);
	}
	//MFnIkHandle fnHandle;
	//fnHandle.create(rootJointDagPath, leafJointDagPath);

	//MItDag it(MItDag::kDepthFirst, MFn::kIkHandle);
	//MFnIkHandle fnHandle(it.currentItem());

	static std::vector<MPoint> m_localJointsPos;

	// End-Effector
	MDagPath endEffectorPath = leafJointDagPath;
	//fnHandle.getEffector(endEffectorPath);
	//MFnIkEffector  fnEffector(endEffectorPath);
	MFnTransform transFn(endEffectorPath, &stat);
	MPoint effectorPos = transFn.translation(MSpace::kWorld);

	unsigned int numJoints = endEffectorPath.length();
	std::vector<MDagPath> jointsDagPaths;
	jointsDagPaths.reserve(numJoints);
	while (endEffectorPath.length() > 1)
	{
		endEffectorPath.pop();
		jointsDagPaths.push_back(endEffectorPath);
	}
	std::reverse(jointsDagPaths.begin(), jointsDagPaths.end());

	if (builtLocalSkeleton == false)
	{
		for (int jointIdx = 0; jointIdx < jointsDagPaths.size(); ++jointIdx)
		{
			//MFnIkJoint curJoint(jointsDagPaths[jointIdx]);
			MFnTransform curTransFn(jointsDagPaths[jointIdx], &stat);
			m_localJointsPos.push_back(curTransFn.getTranslation(MSpace::kWorld));
		}
		m_localJointsPos.push_back(effectorPos);
		builtLocalSkeleton = true;
	}

	MPoint startJointPos = MFnTransform(jointsDagPaths.front()).getTranslation(MSpace::kWorld);

	MVector startToEndEff = m_localJointsPos.back() - m_localJointsPos.front();
	double curveLength = nurbCurve.length();
	double chainLength = startToEndEff.length(); // in local space.
	double stretchFactor = curveLength / chainLength;

	double uVal = 0.0f; double totalRotation[3] = {0,0,0};
	MVector jointPosL = m_localJointsPos[0];

	MFnTransform startJoint( rootJointDagPath );
	startJoint.setTranslation( getPosition(nurbCurve, 0.0), MSpace::kWorld );
	for (int jointIdx = 1; jointIdx < jointsDagPaths.size(); ++jointIdx)
	{
		MVector curJointPosL = m_localJointsPos[jointIdx];

		double dist = stretchFactor * (curJointPosL - jointPosL).length();
		uVal = uVal + dist / curveLength;

		MVector curCurveJointPos = getPosition(nurbCurve, uVal);
	
		MFnTransform prevJoint(jointsDagPaths[jointIdx - 1]);
		MFnTransform curJoint(jointsDagPaths[jointIdx]);

		double boneLength = (curJoint.getTranslation(MSpace::kWorld) - prevJoint.getTranslation(MSpace::kWorld)).length();
		double wantedBoneLength = (curCurveJointPos - prevJoint.getTranslation(MSpace::kWorld)).length();
		double scale[] = { wantedBoneLength / boneLength, 1, 1 };
		prevJoint.scaleBy(scale);

		MVector boneUnitDir = (curCurveJointPos - prevJoint.getTranslation(MSpace::kWorld)).normal();

		boneUnitDir.normalize();
		MVector rotAxis = boneUnitDir^MVector(1, 0, 0); rotAxis.normalize();
		double rotAngle = boneUnitDir.angle(MVector(1, 0, 0));

		double endJointAngle[3] = { 0, 0, 0 };
		///////////////////////////////////////////////////////////////////////////////////
		double x = rotAxis(0); double y = rotAxis(1); double z = rotAxis(2);
		double s = sin(rotAngle); double c = cos(rotAngle); double t = 1 - c;
		if ((x*y*t + z*s) > 0.998) { // north pole singularity detected
			endJointAngle[1] = 2 * atan2(x*sin(rotAngle / 2), cos(rotAngle / 2));
			endJointAngle[2] = -M_PI / 2;
			endJointAngle[0] = 0;
		}
		else if ((x*y*t + z*s) < -0.998) { // south pole singularity detected
			endJointAngle[1] = -2 * atan2(x*sin(rotAngle / 2), cos(rotAngle / 2));
			endJointAngle[2] = M_PI / 2;
			endJointAngle[0] = 0;
		}
		else
		{
			endJointAngle[1] = atan2(y * s - x * z * t, 1 - (y*y + z*z) * t);
			endJointAngle[2] = -asin(x * y * t + z * s);
			endJointAngle[0] = 0;
		}
		///////////////////////////////////////////////////////////////////////////////////

		/*
		MVector effectorVecXY = MVector(boneUnitDir(0), boneUnitDir(1), 0.0); 
		effectorVecXY.normalize();
		if (effectorVecXY.length() > 0.01)
		{
			endJointAngle[2] = effectorVecXY.angle(MVector(1, 0, 0));
			if ((MVector(1, 0, 0) ^ effectorVecXY) * MVector(0, 0, 1) < 0.0) { endJointAngle[2] = -endJointAngle[2]; }
		}
		
		MVector effectorVecXZ = MVector(boneUnitDir(0), 0.0, boneUnitDir(2));
		effectorVecXZ.normalize();
		if (effectorVecXZ.length() > 0.01)
		{
			endJointAngle[1] = effectorVecXZ.angle(MVector(1, 0, 0));
			if ((MVector(1, 0, 0) ^ effectorVecXZ) * MVector(0, 1, 0) < 0.0) { endJointAngle[1] = -endJointAngle[1]; }
		}
		float yaw = atan2(boneUnitDir(0) - 1, boneUnitDir(2)) *180.0 / M_PI;
		float padj = sqrt(pow(boneUnitDir(0)-1, 2) + pow(boneUnitDir(2), 2));
		float pitch = atan2(padj, boneUnitDir(1)) *180.0 / M_PI;*/

		double prevJointAngle[3] = { 0, 0, 0 };
		for (int i = 0; i < 3; ++i) { prevJointAngle[i] = endJointAngle[i] - totalRotation[i]; totalRotation[i] += prevJointAngle[i]; }
		prevJoint.setRotation(prevJointAngle, curJoint.rotationOrder());

		jointPosL = curJointPosL;
	}
	MVector effectorCurvePos = getPosition(nurbCurve, 1.0);
	MFnTransform endJoint(leafJointDagPath);
	endJoint.setTranslation(effectorCurvePos, MSpace::kWorld);
	return MS::kSuccess;
}




