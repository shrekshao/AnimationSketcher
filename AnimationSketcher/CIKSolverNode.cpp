

#include <algorithm>

#include <maya/MGlobal.h>

#include <maya/MIOStream.h>

#include <maya/MString.h>
#include <maya/MObject.h>
#include <maya/MIkHandleGroup.h>
#include <maya/MFnIkHandle.h>
#include <maya/MDagPath.h>
#include <maya/MVector.h>
#include <maya/MPoint.h>
#include <maya/MDoubleArray.h>

#include <maya/MPxIkSolverNode.h>
#include <maya/MIkHandleGroup.h>
#include <maya/MFnIkHandle.h>
#include <maya/MFnIkEffector.h>
#include <maya/MFnIkJoint.h>

#include "CIKSolverNode.h"

#define MAX_ITERATIONS 1
#define kSolverType "ikSolverNode"

#define McheckErr(stat,msg)		\
if (MS::kSuccess != stat) {		\
	cerr << msg;				\
	return MS::kFailure;		\
}

MTypeId CIKSolverNode::id(0x00080030);

CIKSolverNode::CIKSolverNode()
: MPxIkSolverNode()
{
	// setMaxIterations( MAX_ITERATIONS );
}

CIKSolverNode::~CIKSolverNode()
{
}

// This is the core solver.
MStatus CIKSolverNode::doSolve()
{
	doSimpleSolver();
	return MS::kSuccess;
}

MVector getPosition(double uVal)
{
	MPoint minPos = MPoint(0, 0, 0);
	MPoint maxPos = MPoint(10, 10, 10);
	return (minPos + uVal * (maxPos - minPos));
}

MStatus CIKSolverNode::doSimpleSolver()
{
	MStatus stat;

	// Get the handle and create a function set for it
	//	
	MIkHandleGroup* handle_group = handleGroup();
	if (NULL == handle_group) {
		return MS::kFailure;
	}
	MObject handle = handle_group->handle(0);
	MDagPath handlePath = MDagPath::getAPathTo(handle);
	MFnIkHandle fnHandle(handlePath, &stat);

	// End-Effector
	MDagPath endEffectorPath;
	fnHandle.getEffector(endEffectorPath);
	MFnIkEffector  fnEffector(endEffectorPath);
	MPoint effectorPos = fnEffector.rotatePivot(MSpace::kWorld);

	unsigned int numJoints = endEffectorPath.length();
	std::vector<MDagPath> jointsDagPaths; jointsDagPaths.reserve(numJoints);
	while (endEffectorPath.length() > 1)
	{
		endEffectorPath.pop();
		jointsDagPaths.push_back( endEffectorPath );
	}
	std::reverse(jointsDagPaths.begin(), jointsDagPaths.end());

	static bool builtLocalSkeleton = false;
	if (builtLocalSkeleton == false)
	{
		for (int jointIdx = 0; jointIdx < jointsDagPaths.size(); ++jointIdx)
		{
			MFnIkJoint curJoint(jointsDagPaths[jointIdx]);
			m_localJointsPos.push_back( curJoint.getTranslation(MSpace::kWorld) );
		}
		m_localJointsPos.push_back(effectorPos );
		builtLocalSkeleton = true;
	}

	MPoint startJointPos = MFnIkJoint(jointsDagPaths.front()).getTranslation(MSpace::kWorld);

	MVector startToEndEff = m_localJointsPos.back() - m_localJointsPos.front();
	double curveLength = (getPosition(1.0) - getPosition(0.0)).length();
	double chainLength = startToEndEff.length(); // in local space.
	double stretchFactor = curveLength / chainLength;
	
	double uVal = 0.0f;
	MVector jointPosL = m_localJointsPos[0];
	for (int jointIdx = 0; jointIdx < jointsDagPaths.size(); ++jointIdx)
	{
		MFnIkJoint curJoint(jointsDagPaths[jointIdx]);

		MVector curJointPosL = m_localJointsPos[jointIdx];

		double dist = stretchFactor * (curJointPosL - jointPosL).length();
		uVal = uVal + dist / curveLength;

		MVector curCurveJointPos = getPosition(uVal);
		curJoint.setTranslation(curCurveJointPos, MSpace::kWorld);
		jointPosL = curJointPosL;
	}
	MVector effectorCurvePos = getPosition(1.0);
	MVector curCurveJointPos = getPosition(uVal);
	MVector effectorVec = (effectorCurvePos - curCurveJointPos).normal();
	double endJointAngle[3]; 
	MVector effectorVecXY = MVector(effectorVec(0), effectorVec(1), 0.0);
	endJointAngle[2] = effectorVecXY.angle(MVector(1, 0, 0));
	if ((MVector(1, 0, 0) ^ effectorVecXY) * MVector(0, 0, 1) < 0.0) { endJointAngle[2] = -endJointAngle[2]; }
	MVector effectorVecXZ = MVector(effectorVec(0), 0.0, effectorVec(2));
	endJointAngle[1] = effectorVecXZ.angle(MVector(1, 0, 0));
	if ((MVector(1, 0, 0) ^ effectorVecXZ) * MVector(0, 1, 0) < 0.0) { endJointAngle[1] = -endJointAngle[1]; }
	endJointAngle[0] = 0.0;
	MFnIkJoint curJoint(jointsDagPaths.back()); curJoint.setRotation(endJointAngle, curJoint.rotationOrder());
	return MS::kSuccess;
}

void* CIKSolverNode::creator()
{
	return new CIKSolverNode();
}

MStatus CIKSolverNode::initialize()
{
	return MS::kSuccess;
}

// This method returns the type name used to identify this solver.
MString CIKSolverNode::solverTypeName() const
{
	return MString(kSolverType);
}
