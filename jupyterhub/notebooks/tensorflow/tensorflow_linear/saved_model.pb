
ÎĄ
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Square
x"T
y"T"
Ttype:
	2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*	1.2.0-rc22v1.2.0-rc1-24-gce1d6ecůt

(weights/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
: *
valueB *
_class
loc:@weights

&weights/Initializer/random_uniform/minConst*
valueB
 *×łÝż*
_class
loc:@weights*
dtype0*
_output_shapes
: 

&weights/Initializer/random_uniform/maxConst*
valueB
 *×łÝ?*
_class
loc:@weights*
_output_shapes
: *
dtype0
Î
0weights/Initializer/random_uniform/RandomUniformRandomUniform(weights/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@weights*
seed2 *
dtype0*
_output_shapes
: 
ş
&weights/Initializer/random_uniform/subSub&weights/Initializer/random_uniform/max&weights/Initializer/random_uniform/min*
T0*
_class
loc:@weights*
_output_shapes
: 
Ä
&weights/Initializer/random_uniform/mulMul0weights/Initializer/random_uniform/RandomUniform&weights/Initializer/random_uniform/sub*
_class
loc:@weights*
_output_shapes
: *
T0
ś
"weights/Initializer/random_uniformAdd&weights/Initializer/random_uniform/mul&weights/Initializer/random_uniform/min*
_output_shapes
: *
_class
loc:@weights*
T0

weights
VariableV2*
_output_shapes
: *
dtype0*
shape: *
	container *
_class
loc:@weights*
shared_name 
Ť
weights/AssignAssignweights"weights/Initializer/random_uniform*
_class
loc:@weights*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
^
weights/readIdentityweights*
_class
loc:@weights*
_output_shapes
: *
T0

%bias/Initializer/random_uniform/shapeConst*
valueB *
_class
	loc:@bias*
dtype0*
_output_shapes
: 

#bias/Initializer/random_uniform/minConst*
valueB
 *×łÝż*
_class
	loc:@bias*
dtype0*
_output_shapes
: 

#bias/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *×łÝ?*
_class
	loc:@bias
Ĺ
-bias/Initializer/random_uniform/RandomUniformRandomUniform%bias/Initializer/random_uniform/shape*
_output_shapes
: *
_class
	loc:@bias*
dtype0*

seed *
T0*
seed2 
Ž
#bias/Initializer/random_uniform/subSub#bias/Initializer/random_uniform/max#bias/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
	loc:@bias
¸
#bias/Initializer/random_uniform/mulMul-bias/Initializer/random_uniform/RandomUniform#bias/Initializer/random_uniform/sub*
T0*
_output_shapes
: *
_class
	loc:@bias
Ş
bias/Initializer/random_uniformAdd#bias/Initializer/random_uniform/mul#bias/Initializer/random_uniform/min*
T0*
_class
	loc:@bias*
_output_shapes
: 

bias
VariableV2*
_output_shapes
: *
dtype0*
shape: *
	container *
_class
	loc:@bias*
shared_name 

bias/AssignAssignbiasbias/Initializer/random_uniform*
_class
	loc:@bias*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
U
	bias/readIdentitybias*
T0*
_output_shapes
: *
_class
	loc:@bias
e

x_observedPlaceholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
R
mulMulweights/read
x_observed*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
H
addAddmul	bias/read*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
e

y_observedPlaceholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
I
subSubadd
y_observed*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
C
SquareSquaresub*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
O
ConstConst*
valueB: *
_output_shapes
:*
dtype0
Y
MeanMeanSquareConst*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
T
gradients/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Y
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
: *
T0
k
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
_
gradients/Mean_grad/ShapeShapeSquare*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

Tmultiples0
a
gradients/Mean_grad/Shape_1ShapeSquare*
out_type0*
_output_shapes
:*
T0
^
gradients/Mean_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
c
gradients/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
~
gradients/Square_grad/mul/xConst^gradients/Mean_grad/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @
p
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

gradients/Square_grad/mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
[
gradients/sub_grad/ShapeShapeadd*
out_type0*
_output_shapes
:*
T0
d
gradients/sub_grad/Shape_1Shape
y_observed*
_output_shapes
:*
out_type0*
T0
´
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
¤
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ö
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_class#
!loc:@gradients/sub_grad/Reshape
Ü
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
[
gradients/add_grad/ShapeShapemul*
T0*
_output_shapes
:*
out_type0
]
gradients/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
´
gradients/add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
¸
gradients/add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ö
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_class#
!loc:@gradients/add_grad/Reshape*
T0
Ď
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
_output_shapes
: */
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0
[
gradients/mul_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
d
gradients/mul_grad/Shape_1Shape
x_observed*
_output_shapes
:*
out_type0*
T0
´
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/mul_grad/mulMul+gradients/add_grad/tuple/control_dependency
x_observed*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
_output_shapes
: *
Tshape0

gradients/mul_grad/mul_1Mulweights/read+gradients/add_grad/tuple/control_dependency*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ľ
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
É
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
_output_shapes
: *-
_class#
!loc:@gradients/mul_grad/Reshape*
T0
Ü
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*
T0
b
GradientDescent/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ<
đ
3GradientDescent/update_weights/ApplyGradientDescentApplyGradientDescentweightsGradientDescent/learning_rate+gradients/mul_grad/tuple/control_dependency*
_class
loc:@weights*
_output_shapes
: *
T0*
use_locking( 
é
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@bias*
_output_shapes
: 

GradientDescentNoOp4^GradientDescent/update_weights/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent
+
initNoOp^weights/Assign^bias/Assign
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
G
lossScalarSummary	loss/tagsMean*
T0*
_output_shapes
: 
I
Merge/MergeSummaryMergeSummaryloss*
N*
_output_shapes
: 
P

save/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel

save/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_51a73ebf6c244873b8242683a2b616ce/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
n
save/SaveV2/tensor_namesConst*"
valueBBbiasBweights*
dtype0*
_output_shapes
:
g
save/SaveV2/shape_and_slicesConst*
valueBB B *
_output_shapes
:*
dtype0

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbiasweights*
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*
N*

axis *
T0
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
h
save/RestoreV2/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBbias
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2

save/AssignAssignbiassave/RestoreV2*
_class
	loc:@bias*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
m
save/RestoreV2_1/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBweights
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2

save/Assign_1Assignweightssave/RestoreV2_1*
_class
loc:@weights*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
8
save/restore_shardNoOp^save/Assign^save/Assign_1
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"j
trainable_variablesSQ
+
	weights:0weights/Assignweights/read:0
"
bias:0bias/Assignbias/read:0"
	summaries


loss:0"
train_op

GradientDescent"`
	variablesSQ
+
	weights:0weights/Assignweights/read:0
"
bias:0bias/Assignbias/read:0*
serving_defaulto
-

x_observed
x_observed:0˙˙˙˙˙˙˙˙˙"
y_pred
add:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict*z
predicto
-

x_observed
x_observed:0˙˙˙˙˙˙˙˙˙"
y_pred
add:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict