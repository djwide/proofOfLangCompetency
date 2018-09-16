// CS478: Homework 7

import hw7.base._

var userName = "Davy Wide-Man"

def eval(e: Expr, env: Env): Int = e match {
  // implement cases for Or, Var, and ArrayLookup
  case Or(left: Expr, right: Expr)=> {//assumes 'booleans' are entered
    if(eval(left, env)==1) 1
	else if (eval(right, env)==1) 1 
	else 0
  }
  case Var(name: String)=> env.lookupVar(name).contents
  case ArrayLookup(name: String, index: Expr)=>{
    if(env.lookupArray(name).locs.contains(eval(index, env))) env.lookupArray(name).locs(eval(index, env)).contents
    else error("Not in my house")
  }
  case _ => predefinedEval(e,env) // handles all other cases
}

def exec(s: Stmt, env: Env): Unit = s match {
  // implement cases for Block, Assign, ArrayAssign, and ProcedureCall
  case Block(decls: List[Decl], stmts: List[Stmt])=>{
    for(x<- decls)  declare(x, env)
	for(y<- stmts) exec(y, env)
  }
  case Assign(name: String, expr: Expr)=> env.lookupVar(name).contents= eval(expr, env)
  case ArrayAssign(name: String, index: Expr, expr: Expr)=> env.lookupArray(name).locs(eval(index, env)).contents=eval(expr, env)
  case ProcedureCall(name: String, args: List[Expr])=>{
    val miniEnv= env.lookupProcedure(name).env
	val ps =  env.lookupProcedure(name).params
	if (args.length== env.lookupProcedure(name).params.length){
	  if (ps(0).byRef==true){		//byref  //functions have consistent call
		for (arg<- args){ arg match{
		  case Var(name: String)=>miniEnv.insert(ps(args.indexOf(arg)).name,env.lookupVar(name))
		  case ArrayLookup(name: String, index: Expr)=> miniEnv.insert(ps(args.indexOf(arg)).name,env.lookupArray(name))
		  case _=> miniEnv.insert(ps(args.indexOf(arg)).name, new Location(eval(arg, env)))
		  }
		}
	  }
	  else{		//byval
	    for (arg<- args) arg match{
          case Var(name: String)=> miniEnv.insert(ps(args.indexOf(arg)).name, new Location(eval(arg,env))) 
	      case ArrayLookup(name: String, index: Expr)=>{
		    miniEnv.insert(ps(args.indexOf(arg)).name, new MemoryBlock(eval(arg,env))) //messed up the array... along with many other things
		  
		  
		  }
		  case _=> miniEnv.insert(ps(args.indexOf(arg)).name, new Location(eval(arg, env)))
		} 
	  }	 
    }
	else error("The params are too numerous or not numerous enough")
  }
  case _ => predefinedExec(s,env) // handles all other cases
}

def declare(d: Decl, env: Env): Env = d match {
  // implement cases for VariableDecl, ArrayDecl, and ProcedureDecl
  case VariableDecl(name: String, init: Expr) => env.insert(name, new Location(eval(init, env)))
  case ArrayDecl(name: String, size: Expr) => {
	if(eval(size, env)>0){
		var m= Map.empty[Int,Location]
		for(x<- 0 to eval(size, env)-1) m= m+(x->new Location(0))
		env.insert(name, new MemoryBlock(m))
	}
	else error("You can't have negatives what're you thinking")
  }
  case ProcedureDecl(name, params, body)=>env.insert(name, new Closure(name, params, body))
  case _ => {
    println("Don't know how to declare " + d)
    error("Not implemented yet.")
  }
}

setEval(eval _) // don't change this line! 
setExec(exec _) // don't change this line!

// Place tests below.  I've given you a few.

// test Block with stmts
test("""begin output(1); output(3); output(2); end""",List(),List(1,3,2))

// test Block with a VariableDecl
test("""begin var x := 5; output(4); end""",List(),List(4))

// test Var
test("""begin var y := 3; output(y*y); end""",List(),List(9))

// test Assign
test("""begin var z := 10; z := z + 5; z := z + 1; output(z); end""",List(),List(16));

// test nested variable scopes
test("""begin
  var x := input();
  output(x);
  begin
    var x := x + 2;
    output(x);
  end
  output(x);
end""",List(5),List(5,7,5))

