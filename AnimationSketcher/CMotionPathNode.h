#ifndef _C_MOTION_PATH_NODE_H_
#define _C_MOTION_PATH_NODE_H_

//#ifndef _MFnPlugin
//#include <maya/MFnPlugin.h>
//#endif

#include <maya/MPxMotionPathNode.h> 

class CMotionPathNode : public MPxMotionPathNode
{
public:
	CMotionPathNode();
	virtual				~CMotionPathNode();

	virtual MStatus		compute(const MPlug& plug, MDataBlock& data);

	static  void*		creator();
	static  MStatus		initialize();

	// Member variables...
	//
	static	MObject		offset;			// The "offset" attribute
	static	MObject		wobbleRate;		// The "wobbleRate" attribute

	static	MTypeId		id;				// The IFF type id

private:
	static MStatus		affectsOutput(MObject& attr);
};

#endif