#ifndef _C_IK_SOLVER_NODE_H_
#define _C_IK_SOLVER_NODE_H_

//#ifndef _MFnPlugin
//#include <maya/MFnPlugin.h>
//#endif
#include <vector>

#include <maya/MPxIkSolverNode.h>

class CIKSolverNode : public MPxIkSolverNode 
{
public:
	CIKSolverNode();
	virtual			~CIKSolverNode();

	virtual MStatus	doSolve();
	virtual MString	solverTypeName() const;

	static	void*	creator();
	static  MStatus         initialize();

public:

	static	MTypeId	id;
	std::vector<MPoint> m_localJointsPos;

private:
	MStatus			doSimpleSolver();
};

#endif // _C_IK_SOLVER_NODE_H_