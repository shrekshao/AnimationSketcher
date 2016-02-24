#include "HelloMaya.h"
#include <maya/MFnPlugin.h>
//#include <maya/MSimple.h>


//#define EXPORT _declspec(dllexport)

HelloMaya::HelloMaya()
{
}

MStatus HelloMaya::doIt(const MArgList & argList)
{
	MStatus stat;
	//MGlobal::displayInfo("Hello World!");

	MString strName;
	MString strID;

	for (int i = 0; i < argList.length(); i++)
	{
		if (MString("-name") == argList.asString(i, &stat)
			&& MS::kSuccess == stat)
		{
			MString tmp = argList.asString(++i, &stat);
			if (MS::kSuccess == stat)
			{
				strName = tmp;
			}
		}
		else if (MString("-id") == argList.asString(i, &stat)
			&& MS::kSuccess == stat)
		{
			MString tmp = argList.asString(++i, &stat);
			if (MS::kSuccess == stat)
			{
				strID = tmp;
			}
		}
	}

	if (MS::kSuccess == stat)
	{
		MString cmd = "if (`window -exists myWindow`) deleteUI myWindow;\n"
			"string $name = \"Name:" + strName + "\";\n"
			"string $id = \"id:" + strID + "\";\n"
			"window -title \"new window\" -widthHeight 300 200 myWindow;\n"
			"rowLayout\n"
			"- numberOfColumns 3\n"
			"- columnWidth3 120 120 120\n"
			"- columnAlign3 \"center\" \"center\" \"center\";\n"
			"text -label $name;\n"
			"text -label $id;\n"
			"button - label \"OK\" - command \"deleteUI myWindow \";\n"
			"showWindow myWindow;\n";

		MGlobal::executeCommand(cmd,true);
	}



	return stat;
}

void * HelloMaya::creator()
{
	return new HelloMaya;
}


MStatus initializePlugin(MObject obj)
{
	MStatus stat;
	MFnPlugin plugin(obj, "CIS660", "1.0", "Any");
	stat = plugin.registerCommand("helloMaya", HelloMaya::creator);
	if (!stat)
	{
		stat.perror("registerCommand failed");
	}
	return stat;
}

MStatus uninitializePlugin(MObject obj)
{
	MStatus stat;
	MFnPlugin plugin(obj);
	stat = plugin.deregisterCommand("helloMaya");
	if (!stat)
	{
		stat.perror("deregisterCommand failed");
	}
	return stat;
}