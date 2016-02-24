#pragma once

#include <maya/MArgList.h>
#include <maya/MObject.h>
#include <maya/MGlobal.h>
#include <maya/MPxCommand.h>

class HelloMaya : public MPxCommand
{
public:
	HelloMaya();
	virtual MStatus doIt(const MArgList & argList);

	static void *creator();
};