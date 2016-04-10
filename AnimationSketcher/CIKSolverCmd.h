#ifndef _C_IK_SOLVER_CMD_H_
#define _C_IK_SOLVER_CMD_H_

#include <maya/MPxCommand.h>
#include <string>

class CIKSolverCmd : public MPxCommand
{
public:
	CIKSolverCmd();
	virtual ~CIKSolverCmd();
	static void* creator() { return new CIKSolverCmd(); }
	static MSyntax newSyntax();

	MStatus doIt(const MArgList& args);
};

#endif // _C_IK_SOLVER_CMD_H_