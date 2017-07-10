#!/bin/bash
echo "Stats for $1"
echo -n ";; Top-Level Defines: "
cat $1 |grep "Top Level Def" |wc -l
echo -n ";; Top-Level Lambdas: "
cat $1 |grep "Top Level Lam" |wc -l
echo -n ";; Lambdas: "
cat $1 |grep "Lambda Var" |wc -l
echo -n ";; Letrecs: "
cat $1 |grep "Letrec Var" |wc -l
echo -n ";; Required Type Annotations: "
cat $1 |grep "Required Ann" |wc -l
echo -n ";; Extra Annotations: "
cat $1 |grep Extra |wc -l
echo -n ";; Unannotated Variables: "
cat $1 |grep Unann |wc -l
echo -n ";; Annotated Expressions: "
cat $1 |grep "Expression Type" |wc -l
echo -n ";; Type Instantiations: "
cat $1 |grep "Type Inst" |wc -l
echo -n ";; Require/Typed: "
cat $1 |grep -i "require/typed" |wc -l
echo -n ";; Typed Struct: "
cat $1 |grep -i "typed struct" |wc -l
echo -n ";; Type Alias: "
cat $1 |grep -i "alias" |wc -l
echo -n ";; Ann Paren Count: "
cat $1 |grep -i "Annotation Sexp" |wc -l

