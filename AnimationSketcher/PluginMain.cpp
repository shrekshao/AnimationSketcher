#include <maya/MFnPlugin.h>
#include <maya/MArgList.h>
#include <maya/MObject.h>
#include <maya/MGlobal.h>

#include "CMotionPathNode.h"
#include "CIKSolverNode.h"

//#define EXPORT _declspec(dllexport)

MStatus initializePlugin(MObject obj)
{
	MStatus   status = MStatus::kSuccess;
	MFnPlugin plugin(obj, "Animation Sketcher", "1.0", "Any");

	status = plugin.registerNode(
		"motionPathNode", CMotionPathNode::id, CMotionPathNode::creator, CMotionPathNode::initialize,
		MPxNode::kMotionPathNode);
	if (!status) {
		status.perror("register motionPathNode");
		return(status);
	}

	status = plugin.registerNode(
		"ikSolverNode", CIKSolverNode::id, CIKSolverNode::creator, CIKSolverNode::initialize,
		MPxNode::kIkSolverNode);
	if (!status) {
		status.perror("register ikSolverNode");
		return status;
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
		status.perror("deregister motionPathNode");
		return(status);
	}
	status = plugin.deregisterNode(CIKSolverNode::id);
	if (!status) {
		status.perror("deregister ikSolverNode");
		return status;
	}
	MGlobal::executeCommand("deleteMenu();");

	return status;
}