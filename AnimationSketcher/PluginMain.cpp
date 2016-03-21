#include <maya/MFnPlugin.h>
#include <maya/MArgList.h>
#include <maya/MObject.h>
#include <maya/MGlobal.h>

#include "CMotionPathNode.h"

//#define EXPORT _declspec(dllexport)

MStatus initializePlugin(MObject obj)
{
	MStatus   status = MStatus::kSuccess;
	MFnPlugin plugin(obj, "Animation Sketcher", "1.0", "Any");

	status = plugin.registerNode(
		"motionPathNode", CMotionPathNode::id, CMotionPathNode::creator, CMotionPathNode::initialize,
		MPxNode::kMotionPathNode);
	if (!status) {
		status.perror("registerNode");
		return(status);
	}

	MGlobal::executeCommand("source \"" + plugin.loadPath() + "/../../AnimationSketcher/zMenu.mel\"");
	MGlobal::executeCommand("createMenu();");

	return status;
}

MStatus uninitializePlugin(MObject obj)
{
	MStatus   status = MStatus::kSuccess;
	MFnPlugin plugin(obj);

	status = plugin.deregisterNode(CMotionPathNode::id);
	if (!status) {
		status.perror("deregisterNode");
		return(status);
	}
	MGlobal::executeCommand("deleteMenu();");

	return status;
}