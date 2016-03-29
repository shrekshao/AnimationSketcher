#include <maya/MGlobal.h>

#include <maya/MDataHandle.h> 
#include <maya/MTypeId.h>
#include <maya/MFnNumericAttribute.h> 
#include <maya/MStatus.h> 

#include <maya/MIOStream.h>

#include <maya/MMatrix.h>
#include <maya/MQuaternion.h> 
#include <maya/MTransformationMatrix.h>

#include "CMotionPathNode.h"

// Useful constants.
//
#define ALMOST_ZERO	1.0e-5
#define	TWO_PI		( 2.0 * 3.1415927 )

MTypeId CMotionPathNode::id(0x00080020);

// This node does not need to perform any special actions on creation or
// destruction
//
CMotionPathNode::CMotionPathNode()
: MPxMotionPathNode()
{
}
CMotionPathNode::~CMotionPathNode()
{
}

// The compute() method does the actual work of the node using the inputs
// of the node to generate its output.
//
// Compute takes two parameters: plug and data.
// - Plug is the the data value that needs to be recomputed
// - Data provides handles to all of the nodes attributes, only these
//   handles should be used when performing computations.
//
MStatus CMotionPathNode::compute(const MPlug& plug, MDataBlock& data)
{
	double	f;
	MStatus status;

	// Read the attributes we need from the datablock.
	//
	double	uVal = data.inputValue(uValue).asDouble();
	bool	fractionModeVal = data.inputValue(fractionMode).asBool();
	bool	followVal = data.inputValue(follow).asBool();

	// Make sure the value is fractional.
	//
	if (fractionModeVal) {
		f = uVal;
	}
	else {
		f = parametricToFractional(uVal, &status);
	}
	CHECK_MSTATUS_AND_RETURN_IT(status);

	// To compute the sample location on the path, first wrap the fraction
	// around the start of the the path in case it goes past the end
	// to prevent clamping, then compute the sample location on the path.
	// 
	f = wraparoundFractionalValue(f, &status);
	CHECK_MSTATUS_AND_RETURN_IT(status);

	MPoint location = position(data, f, &status);
	CHECK_MSTATUS_AND_RETURN_IT(status);

	// Get the orthogonal vectors on the motion path.
	//
	const MVector worldUp = MGlobal::upAxis();
	MVector	dir, side, up;
	CHECK_MSTATUS_AND_RETURN_IT(getVectors(data, f, dir, side, up,
		&worldUp));

	// Write the result values to the output plugs.
	//
	data.outputValue(allCoordinates).set(location.x, location.y,
		location.z);
	if (followVal) {
		MVector localDir = MVector(0, 1, 0); // Local model direction.
		double angleRot = localDir.angle(dir);
		MVector cross = localDir ^ dir;
		double angleSign = cross * MVector(0, 0, 1);
		if (angleSign < 0.0)
		{
			angleRot = -angleRot;
		}
		data.outputValue(rotate).set(0.0, 0.0, angleRot);
	}

	return(MS::kSuccess);
}

// The creator() method allows Maya to instantiate instances of this node.
// It is called every time a new instance of the node is requested by
// either the createNode command or the MFnDependencyNode::create()
// method.
//
// In this case creator simply returns a new motionPathNode object.
//
void* CMotionPathNode::creator()
{
	return new CMotionPathNode();
}

// The initialize method is called only once when the node is first
// registered with Maya.
//
MStatus CMotionPathNode::initialize()
{
	return(MS::kSuccess);
}

MStatus	CMotionPathNode::affectsOutput(MObject& attr)
{
	CHECK_MSTATUS_AND_RETURN_IT(attributeAffects(attr, rotate));
	CHECK_MSTATUS_AND_RETURN_IT(attributeAffects(attr, rotateX));
	CHECK_MSTATUS_AND_RETURN_IT(attributeAffects(attr, rotateY));
	CHECK_MSTATUS_AND_RETURN_IT(attributeAffects(attr, rotateZ));
	CHECK_MSTATUS_AND_RETURN_IT(attributeAffects(attr, allCoordinates));
	CHECK_MSTATUS_AND_RETURN_IT(attributeAffects(attr, xCoordinate));
	CHECK_MSTATUS_AND_RETURN_IT(attributeAffects(attr, yCoordinate));
	CHECK_MSTATUS_AND_RETURN_IT(attributeAffects(attr, zCoordinate));

	return(MS::kSuccess);
}