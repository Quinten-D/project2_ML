ศา
๙
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

๛
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%ทั8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
ม
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring จ
@
StaticRegexFullMatch	
input

output
"
patternstring
๗
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12unknown8ด
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
~
training/SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nametraining/SGD/momentum
w
)training/SGD/momentum/Read/ReadVariableOpReadVariableOptraining/SGD/momentum*
_output_shapes
: *
dtype0

training/SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nametraining/SGD/learning_rate

.training/SGD/learning_rate/Read/ReadVariableOpReadVariableOptraining/SGD/learning_rate*
_output_shapes
: *
dtype0
x
training/SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nametraining/SGD/decay
q
&training/SGD/decay/Read/ReadVariableOpReadVariableOptraining/SGD/decay*
_output_shapes
: *
dtype0
v
training/SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *"
shared_nametraining/SGD/iter
o
%training/SGD/iter/Read/ReadVariableOpReadVariableOptraining/SGD/iter*
_output_shapes
: *
dtype0	
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_4/kernel
|
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*'
_output_shapes
:*
dtype0
ฃ
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_3/moving_variance

9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes	
:*
dtype0

!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/moving_mean

5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes	
:*
dtype0

batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_3/beta

.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes	
:*
dtype0

batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_3/gamma

/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes	
:*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:*
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_3/kernel
|
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*'
_output_shapes
:@*
dtype0
ข
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_2/moving_variance

9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:@*
dtype0

!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_2/moving_mean

5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:@*
dtype0

batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_2/beta

.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:@*
dtype0

batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_2/gamma

/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:@*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
ข
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_1/moving_variance

9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0

!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_1/moving_mean

5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0

batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_1/beta

.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
: *
dtype0

batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_1/gamma

/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
: *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0

#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance

7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0

batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean

3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0

batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebatch_normalization/beta

,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0

batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namebatch_normalization/gamma

-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ู
valueฯBฬ Bล
จ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer_with_weights-8
layer-16
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
ศ
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op*
ี
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+axis
	,gamma
-beta
.moving_mean
/moving_variance*

0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 

6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses* 
ศ
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias
 D_jit_compiled_convolution_op*
ี
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
Kaxis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance*

P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses* 

V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses* 
ศ
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

bkernel
cbias
 d_jit_compiled_convolution_op*
ี
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
kaxis
	lgamma
mbeta
nmoving_mean
omoving_variance*

p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses* 

v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses* 
อ
|	variables
}trainable_variables
~regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*
เ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta
moving_mean
moving_variance*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
ั
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+ก&call_and_return_all_conditional_losses
ขkernel
	ฃbias
!ค_jit_compiled_convolution_op*

ฅ	variables
ฆtrainable_variables
งregularization_losses
จ	keras_api
ฉ__call__
+ช&call_and_return_all_conditional_losses* 
า
"0
#1
,2
-3
.4
/5
B6
C7
L8
M9
N10
O11
b12
c13
l14
m15
n16
o17
18
19
20
21
22
23
ข24
ฃ25*

"0
#1
,2
-3
B4
C5
L6
M7
b8
c9
l10
m11
12
13
14
15
ข16
ฃ17*
* 
ต
ซnon_trainable_variables
ฌlayers
ญmetrics
 ฎlayer_regularization_losses
ฏlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
ฐtrace_0
ฑtrace_1
ฒtrace_2
ณtrace_3* 
:
ดtrace_0
ตtrace_1
ถtrace_2
ทtrace_3* 
* 
>
	ธiter

นdecay
บlearning_rate
ปmomentum*

ผserving_default* 

"0
#1*

"0
#1*
* 

ฝnon_trainable_variables
พlayers
ฟmetrics
 ภlayer_regularization_losses
มlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

ยtrace_0* 

รtrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
,0
-1
.2
/3*

,0
-1*
* 

ฤnon_trainable_variables
ลlayers
ฦmetrics
 วlayer_regularization_losses
ศlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

ษtrace_0
สtrace_1* 

หtrace_0
ฬtrace_1* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

อnon_trainable_variables
ฮlayers
ฯmetrics
 ะlayer_regularization_losses
ัlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

าtrace_0* 

ำtrace_0* 
* 
* 
* 

ิnon_trainable_variables
ีlayers
ึmetrics
 ืlayer_regularization_losses
ุlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 

ูtrace_0* 

ฺtrace_0* 

B0
C1*

B0
C1*
* 

?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
฿layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

เtrace_0* 

แtrace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
L0
M1
N2
O3*

L0
M1*
* 

โnon_trainable_variables
ใlayers
ไmetrics
 ๅlayer_regularization_losses
ๆlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

็trace_0
่trace_1* 

้trace_0
๊trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

๋non_trainable_variables
์layers
ํmetrics
 ๎layer_regularization_losses
๏layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 

๐trace_0* 

๑trace_0* 
* 
* 
* 

๒non_trainable_variables
๓layers
๔metrics
 ๕layer_regularization_losses
๖layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 

๗trace_0* 

๘trace_0* 

b0
c1*

b0
c1*
* 

๙non_trainable_variables
๚layers
๛metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
l0
m1
n2
o3*

l0
m1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
|	variables
}trainable_variables
~regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
0
1
2
3*

0
1*
* 

non_trainable_variables
layers
?metrics
 กlayer_regularization_losses
ขlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ฃtrace_0
คtrace_1* 

ฅtrace_0
ฆtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

งnon_trainable_variables
จlayers
ฉmetrics
 ชlayer_regularization_losses
ซlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

ฌtrace_0* 

ญtrace_0* 
* 
* 
* 

ฎnon_trainable_variables
ฏlayers
ฐmetrics
 ฑlayer_regularization_losses
ฒlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

ณtrace_0* 

ดtrace_0* 

ข0
ฃ1*

ข0
ฃ1*
* 

ตnon_trainable_variables
ถlayers
ทmetrics
 ธlayer_regularization_losses
นlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+ก&call_and_return_all_conditional_losses
'ก"call_and_return_conditional_losses*

บtrace_0* 

ปtrace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ผnon_trainable_variables
ฝlayers
พmetrics
 ฟlayer_regularization_losses
ภlayer_metrics
ฅ	variables
ฆtrainable_variables
งregularization_losses
ฉ__call__
+ช&call_and_return_all_conditional_losses
'ช"call_and_return_conditional_losses* 

มtrace_0* 

ยtrace_0* 
>
.0
/1
N2
O3
n4
o5
6
7*

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17*

ร0
ฤ1
ล2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
TN
VARIABLE_VALUEtraining/SGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEtraining/SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEtraining/SGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEtraining/SGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

.0
/1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

N0
O1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

n0
o1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
M
ฦ	variables
ว	keras_api

ศtotal

ษcount
ส
_fn_kwargs*
`
ห	variables
ฬ	keras_api
อ
thresholds
ฮtrue_positives
ฯfalse_positives*
`
ะ	variables
ั	keras_api
า
thresholds
ำtrue_positives
ิfalse_negatives*

ศ0
ษ1*

ฦ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ฮ0
ฯ1*

ห	variables*
* 
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUE*

ำ0
ิ1*

ะ	variables*
* 
ga
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_conv2d_inputPlaceholder*1
_output_shapes
:?????????*
dtype0*&
shape:?????????

StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_4/kernelconv2d_4/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_2766
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ู
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp%training/SGD/iter/Read/ReadVariableOp&training/SGD/decay/Read/ReadVariableOp.training/SGD/learning_rate/Read/ReadVariableOp)training/SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOpConst*1
Tin*
(2&	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__traced_save_3575
	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_4/kernelconv2d_4/biastraining/SGD/itertraining/SGD/decaytraining/SGD/learning_ratetraining/SGD/momentumtotalcounttrue_positivesfalse_positivestrue_positives_1false_negatives*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_restore_3693พ
พ


B__inference_conv2d_2_layer_call_and_return_conditional_losses_2142

inputs?
%conv2d_readvariableop_conv2d_2_kernel: @2
$biasadd_readvariableop_conv2d_2_bias:@
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOp%conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
ๅ

 __inference__traced_restore_3693
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias::
,assignvariableop_2_batch_normalization_gamma:9
+assignvariableop_3_batch_normalization_beta:@
2assignvariableop_4_batch_normalization_moving_mean:D
6assignvariableop_5_batch_normalization_moving_variance:<
"assignvariableop_6_conv2d_1_kernel: .
 assignvariableop_7_conv2d_1_bias: <
.assignvariableop_8_batch_normalization_1_gamma: ;
-assignvariableop_9_batch_normalization_1_beta: C
5assignvariableop_10_batch_normalization_1_moving_mean: G
9assignvariableop_11_batch_normalization_1_moving_variance: =
#assignvariableop_12_conv2d_2_kernel: @/
!assignvariableop_13_conv2d_2_bias:@=
/assignvariableop_14_batch_normalization_2_gamma:@<
.assignvariableop_15_batch_normalization_2_beta:@C
5assignvariableop_16_batch_normalization_2_moving_mean:@G
9assignvariableop_17_batch_normalization_2_moving_variance:@>
#assignvariableop_18_conv2d_3_kernel:@0
!assignvariableop_19_conv2d_3_bias:	>
/assignvariableop_20_batch_normalization_3_gamma:	=
.assignvariableop_21_batch_normalization_3_beta:	D
5assignvariableop_22_batch_normalization_3_moving_mean:	H
9assignvariableop_23_batch_normalization_3_moving_variance:	>
#assignvariableop_24_conv2d_4_kernel:/
!assignvariableop_25_conv2d_4_bias:/
%assignvariableop_26_training_sgd_iter:	 0
&assignvariableop_27_training_sgd_decay: 8
.assignvariableop_28_training_sgd_learning_rate: 3
)assignvariableop_29_training_sgd_momentum: #
assignvariableop_30_total: #
assignvariableop_31_count: 0
"assignvariableop_32_true_positives:1
#assignvariableop_33_false_positives:2
$assignvariableop_34_true_positives_1:1
#assignvariableop_35_false_negatives:
identity_37ขAssignVariableOpขAssignVariableOp_1ขAssignVariableOp_10ขAssignVariableOp_11ขAssignVariableOp_12ขAssignVariableOp_13ขAssignVariableOp_14ขAssignVariableOp_15ขAssignVariableOp_16ขAssignVariableOp_17ขAssignVariableOp_18ขAssignVariableOp_19ขAssignVariableOp_2ขAssignVariableOp_20ขAssignVariableOp_21ขAssignVariableOp_22ขAssignVariableOp_23ขAssignVariableOp_24ขAssignVariableOp_25ขAssignVariableOp_26ขAssignVariableOp_27ขAssignVariableOp_28ขAssignVariableOp_29ขAssignVariableOp_3ขAssignVariableOp_30ขAssignVariableOp_31ขAssignVariableOp_32ขAssignVariableOp_33ขAssignVariableOp_34ขAssignVariableOp_35ขAssignVariableOp_4ขAssignVariableOp_5ขAssignVariableOp_6ขAssignVariableOp_7ขAssignVariableOp_8ขAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*ฉ
valueB%B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHบ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ฺ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ช
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ก
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ฅ
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ฆ
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ช
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_2_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_2_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ฆ
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_2_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ช
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_2_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp#assignvariableop_18_conv2d_3_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp!assignvariableop_19_conv2d_3_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_3_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_3_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ฆ
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_3_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:ช
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_3_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp#assignvariableop_24_conv2d_4_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp!assignvariableop_25_conv2d_4_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_26AssignVariableOp%assignvariableop_26_training_sgd_iterIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp&assignvariableop_27_training_sgd_decayIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp.assignvariableop_28_training_sgd_learning_rateIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp)assignvariableop_29_training_sgd_momentumIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_totalIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_countIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp"assignvariableop_32_true_positivesIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp#assignvariableop_33_false_positivesIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp$assignvariableop_34_true_positives_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp#assignvariableop_35_false_negativesIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ็
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: ิ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

G
+__inference_activation_1_layer_call_fn_3211

inputs
identityป
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_2129j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:????????? "
identityIdentity:output:0*0
_input_shapes
:????????? :Y U
1
_output_shapes
:????????? 
 
_user_specified_nameinputs
็
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_3226

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ภ
b
F__inference_activation_2_layer_call_and_return_conditional_losses_3307

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????@@@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@@@"
identityIdentity:output:0*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs


O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2011

inputs9
*readvariableop_batch_normalization_3_gamma:	:
+readvariableop_1_batch_normalization_3_beta:	P
Afusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean:	V
Gfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance:	
identityขAssignNewValueขAssignNewValue_1ขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1v
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_3_gamma*
_output_shapes	
:*
dtype0y
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_3_beta*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean*
_output_shapes	
:*
dtype0ฆ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance*
_output_shapes	
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????:::::*
epsilon%o:*
exponential_avg_factor%
ื#<฿
AssignNewValueAssignVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_3_moving_meanFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ํ
AssignNewValue_1AssignVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????ิ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ศ


B__inference_conv2d_1_layer_call_and_return_conditional_losses_2115

inputs?
%conv2d_readvariableop_conv2d_1_kernel: 2
$biasadd_readvariableop_conv2d_1_bias: 
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOp%conv2d_readvariableop_conv2d_1_kernel*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
paddingSAME*
strides
w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv2d_1_bias*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

G
+__inference_activation_2_layer_call_fn_3302

inputs
identityน
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_2156h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@@@"
identityIdentity:output:0*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
ฺ

M__inference_batch_normalization_layer_call_and_return_conditional_losses_1684

inputs6
(readvariableop_batch_normalization_gamma:7
)readvariableop_1_batch_normalization_beta:M
?fusedbatchnormv3_readvariableop_batch_normalization_moving_mean:S
Efusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance:
identityขAssignNewValueขAssignNewValue_1ขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1s
ReadVariableOpReadVariableOp(readvariableop_batch_normalization_gamma*
_output_shapes
:*
dtype0v
ReadVariableOp_1ReadVariableOp)readvariableop_1_batch_normalization_beta*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp?fusedbatchnormv3_readvariableop_batch_normalization_moving_mean*
_output_shapes
:*
dtype0ฃ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpEfusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance*
_output_shapes
:*
dtype0ึ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o:*
exponential_avg_factor%
ื#<?
AssignNewValueAssignVariableOp?fusedbatchnormv3_readvariableop_batch_normalization_moving_meanFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(๋
AssignNewValue_1AssignVariableOpEfusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????ิ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ฦ

O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3297

inputs8
*readvariableop_batch_normalization_2_gamma:@9
+readvariableop_1_batch_normalization_2_beta:@O
Afusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean:@U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance:@
identityขAssignNewValueขAssignNewValue_1ขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1u
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_2_gamma*
_output_shapes
:@*
dtype0x
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_2_beta*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean*
_output_shapes
:@*
dtype0ฅ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance*
_output_shapes
:@*
dtype0ึ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
ื#<฿
AssignNewValueAssignVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_2_moving_meanFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ํ
AssignNewValue_1AssignVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@ิ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1954

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ฦ

O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3206

inputs8
*readvariableop_batch_normalization_1_gamma: 9
+readvariableop_1_batch_normalization_1_beta: O
Afusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean: U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance: 
identityขAssignNewValueขAssignNewValue_1ขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1u
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_1_gamma*
_output_shapes
: *
dtype0x
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_1_beta*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean*
_output_shapes
: *
dtype0ฅ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance*
_output_shapes
: *
dtype0ึ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o:*
exponential_avg_factor%
ื#<฿
AssignNewValueAssignVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_1_moving_meanFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ํ
AssignNewValue_1AssignVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ิ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

B
&__inference_reshape_layer_call_fn_3431

inputs
identityฑ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_2214e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:?????????"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
๒
b
F__inference_activation_1_layer_call_and_return_conditional_losses_2129

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:????????? d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? :Y U
1
_output_shapes
:????????? 
 
_user_specified_nameinputs

๕
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1766

inputs8
*readvariableop_batch_normalization_1_gamma: 9
+readvariableop_1_batch_normalization_1_beta: O
Afusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean: U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance: 
identityขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1u
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_1_gamma*
_output_shapes
: *
dtype0x
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_1_beta*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean*
_output_shapes
: *
dtype0ฅ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance*
_output_shapes
: *
dtype0ศ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ฐ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs


ฌ
4__inference_batch_normalization_3_layer_call_fn_3352

inputs*
batch_normalization_3_gamma:	)
batch_normalization_3_beta:	0
!batch_normalization_3_moving_mean:	4
%batch_normalization_3_moving_variance:	
identityขStatefulPartitionedCall๐
StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_3_gammabatch_normalization_3_beta!batch_normalization_3_moving_mean%batch_normalization_3_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2011
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*I
_input_shapes8
6:,???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
๎
b
F__inference_activation_3_layer_call_and_return_conditional_losses_2183

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:?????????  c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  :X T
0
_output_shapes
:?????????  
 
_user_specified_nameinputs

J
.__inference_max_pooling2d_2_layer_call_fn_3312

inputs
identityื
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1954
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

G
+__inference_activation_3_layer_call_fn_3393

inputs
identityบ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_2183i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????  "
identityIdentity:output:0*/
_input_shapes
:?????????  :X T
0
_output_shapes
:?????????  
 
_user_specified_nameinputs
Y
ั
D__inference_sequential_layer_call_and_return_conditional_losses_2685
conv2d_input.
conv2d_conv2d_kernel: 
conv2d_conv2d_bias:;
-batch_normalization_batch_normalization_gamma::
,batch_normalization_batch_normalization_beta:A
3batch_normalization_batch_normalization_moving_mean:E
7batch_normalization_batch_normalization_moving_variance:2
conv2d_1_conv2d_1_kernel: $
conv2d_1_conv2d_1_bias: ?
1batch_normalization_1_batch_normalization_1_gamma: >
0batch_normalization_1_batch_normalization_1_beta: E
7batch_normalization_1_batch_normalization_1_moving_mean: I
;batch_normalization_1_batch_normalization_1_moving_variance: 2
conv2d_2_conv2d_2_kernel: @$
conv2d_2_conv2d_2_bias:@?
1batch_normalization_2_batch_normalization_2_gamma:@>
0batch_normalization_2_batch_normalization_2_beta:@E
7batch_normalization_2_batch_normalization_2_moving_mean:@I
;batch_normalization_2_batch_normalization_2_moving_variance:@3
conv2d_3_conv2d_3_kernel:@%
conv2d_3_conv2d_3_bias:	@
1batch_normalization_3_batch_normalization_3_gamma:	?
0batch_normalization_3_batch_normalization_3_beta:	F
7batch_normalization_3_batch_normalization_3_moving_mean:	J
;batch_normalization_3_batch_normalization_3_moving_variance:	3
conv2d_4_conv2d_4_kernel:$
conv2d_4_conv2d_4_bias:
identityข+batch_normalization/StatefulPartitionedCallข-batch_normalization_1/StatefulPartitionedCallข-batch_normalization_2/StatefulPartitionedCallข-batch_normalization_3/StatefulPartitionedCallขconv2d/StatefulPartitionedCallข conv2d_1/StatefulPartitionedCallข conv2d_2/StatefulPartitionedCallข conv2d_3/StatefulPartitionedCallข conv2d_4/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_conv2d_kernelconv2d_conv2d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_2088?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0-batch_normalization_batch_normalization_gamma,batch_normalization_batch_normalization_beta3batch_normalization_batch_normalization_moving_mean7batch_normalization_batch_normalization_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1657๒
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_2102็
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1736จ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_conv2d_1_kernelconv2d_1_conv2d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_2115๒
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:01batch_normalization_1_batch_normalization_1_gamma0batch_normalization_1_batch_normalization_1_beta7batch_normalization_1_batch_normalization_1_moving_mean;batch_normalization_1_batch_normalization_1_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1766๘
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_2129๋
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1845จ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_conv2d_2_kernelconv2d_2_conv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_2142๐
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:01batch_normalization_2_batch_normalization_2_gamma0batch_normalization_2_batch_normalization_2_beta7batch_normalization_2_batch_normalization_2_moving_mean;batch_normalization_2_batch_normalization_2_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1875๖
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_2156๋
max_pooling2d_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1954ฉ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_conv2d_3_kernelconv2d_3_conv2d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_2169๑
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:01batch_normalization_3_batch_normalization_3_gamma0batch_normalization_3_batch_normalization_3_beta7batch_normalization_3_batch_normalization_3_moving_mean;batch_normalization_3_batch_normalization_3_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1984๗
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_2183์
max_pooling2d_3/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2063จ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_conv2d_4_kernelconv2d_4_conv2d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_2197?
reshape/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_2214t
IdentityIdentity reshape/PartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????ฑ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*d
_input_shapesS
Q:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:_ [
1
_output_shapes
:?????????
&
_user_specified_nameconv2d_input
ะ
ข
%__inference_conv2d_layer_call_fn_3051

inputs'
conv2d_kernel:
conv2d_bias:
identityขStatefulPartitionedCall็
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_kernelconv2d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_2088y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*4
_input_shapes#
!:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs



2__inference_batch_normalization_layer_call_fn_3070

inputs'
batch_normalization_gamma:&
batch_normalization_beta:-
batch_normalization_moving_mean:1
#batch_normalization_moving_variance:
identityขStatefulPartitionedCall็
StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_gammabatch_normalization_betabatch_normalization_moving_mean#batch_normalization_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1657
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ฐ

M__inference_batch_normalization_layer_call_and_return_conditional_losses_3115

inputs6
(readvariableop_batch_normalization_gamma:7
)readvariableop_1_batch_normalization_beta:M
?fusedbatchnormv3_readvariableop_batch_normalization_moving_mean:S
Efusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance:
identityขAssignNewValueขAssignNewValue_1ขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1s
ReadVariableOpReadVariableOp(readvariableop_batch_normalization_gamma*
_output_shapes
:*
dtype0v
ReadVariableOp_1ReadVariableOp)readvariableop_1_batch_normalization_beta*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp?fusedbatchnormv3_readvariableop_batch_normalization_moving_mean*
_output_shapes
:*
dtype0ฃ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpEfusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance*
_output_shapes
:*
dtype0ึ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o:*
exponential_avg_factor%
ื#<?
AssignNewValueAssignVariableOp?fusedbatchnormv3_readvariableop_batch_normalization_moving_meanFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(๋
AssignNewValue_1AssignVariableOpEfusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????ิ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
๊
b
F__inference_activation_2_layer_call_and_return_conditional_losses_2156

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????@@@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
ฌK

__inference__traced_save_3575
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop0
,savev2_training_sgd_iter_read_readvariableop	1
-savev2_training_sgd_decay_read_readvariableop9
5savev2_training_sgd_learning_rate_read_readvariableop4
0savev2_training_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_positives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_negatives_read_readvariableop
savev2_const

identity_1ขMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*ฉ
valueB%B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHท
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ์
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop,savev2_training_sgd_iter_read_readvariableop-savev2_training_sgd_decay_read_readvariableop5savev2_training_sgd_learning_rate_read_readvariableop0savev2_training_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: ::::::: : : : : : : @:@:@:@:@:@:@:::::::: : : : : : ::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::-)
'
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: : !

_output_shapes
:: "

_output_shapes
:: #

_output_shapes
:: $

_output_shapes
::%

_output_shapes
: 
ศ
b
F__inference_activation_1_layer_call_and_return_conditional_losses_3216

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:????????? d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:????????? "
identityIdentity:output:0*0
_input_shapes
:????????? :Y U
1
_output_shapes
:????????? 
 
_user_specified_nameinputs
๐

O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1902

inputs8
*readvariableop_batch_normalization_2_gamma:@9
+readvariableop_1_batch_normalization_2_beta:@O
Afusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean:@U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance:@
identityขAssignNewValueขAssignNewValue_1ขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1u
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_2_gamma*
_output_shapes
:@*
dtype0x
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_2_beta*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean*
_output_shapes
:@*
dtype0ฅ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance*
_output_shapes
:@*
dtype0ึ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
ื#<฿
AssignNewValueAssignVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_2_moving_meanFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ํ
AssignNewValue_1AssignVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@ิ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
ฤ
๋
M__inference_batch_normalization_layer_call_and_return_conditional_losses_3097

inputs6
(readvariableop_batch_normalization_gamma:7
)readvariableop_1_batch_normalization_beta:M
?fusedbatchnormv3_readvariableop_batch_normalization_moving_mean:S
Efusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance:
identityขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1s
ReadVariableOpReadVariableOp(readvariableop_batch_normalization_gamma*
_output_shapes
:*
dtype0v
ReadVariableOp_1ReadVariableOp)readvariableop_1_batch_normalization_beta*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp?fusedbatchnormv3_readvariableop_batch_normalization_moving_mean*
_output_shapes
:*
dtype0ฃ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpEfusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance*
_output_shapes
:*
dtype0ศ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????ฐ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2063

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
๎
๋
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1657

inputs6
(readvariableop_batch_normalization_gamma:7
)readvariableop_1_batch_normalization_beta:M
?fusedbatchnormv3_readvariableop_batch_normalization_moving_mean:S
Efusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance:
identityขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1s
ReadVariableOpReadVariableOp(readvariableop_batch_normalization_gamma*
_output_shapes
:*
dtype0v
ReadVariableOp_1ReadVariableOp)readvariableop_1_batch_normalization_beta*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp?fusedbatchnormv3_readvariableop_batch_normalization_moving_mean*
_output_shapes
:*
dtype0ฃ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpEfusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance*
_output_shapes
:*
dtype0ศ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????ฐ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs

E
)__inference_activation_layer_call_fn_3120

inputs
identityน
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_2102j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Y
ั
D__inference_sequential_layer_call_and_return_conditional_losses_2733
conv2d_input.
conv2d_conv2d_kernel: 
conv2d_conv2d_bias:;
-batch_normalization_batch_normalization_gamma::
,batch_normalization_batch_normalization_beta:A
3batch_normalization_batch_normalization_moving_mean:E
7batch_normalization_batch_normalization_moving_variance:2
conv2d_1_conv2d_1_kernel: $
conv2d_1_conv2d_1_bias: ?
1batch_normalization_1_batch_normalization_1_gamma: >
0batch_normalization_1_batch_normalization_1_beta: E
7batch_normalization_1_batch_normalization_1_moving_mean: I
;batch_normalization_1_batch_normalization_1_moving_variance: 2
conv2d_2_conv2d_2_kernel: @$
conv2d_2_conv2d_2_bias:@?
1batch_normalization_2_batch_normalization_2_gamma:@>
0batch_normalization_2_batch_normalization_2_beta:@E
7batch_normalization_2_batch_normalization_2_moving_mean:@I
;batch_normalization_2_batch_normalization_2_moving_variance:@3
conv2d_3_conv2d_3_kernel:@%
conv2d_3_conv2d_3_bias:	@
1batch_normalization_3_batch_normalization_3_gamma:	?
0batch_normalization_3_batch_normalization_3_beta:	F
7batch_normalization_3_batch_normalization_3_moving_mean:	J
;batch_normalization_3_batch_normalization_3_moving_variance:	3
conv2d_4_conv2d_4_kernel:$
conv2d_4_conv2d_4_bias:
identityข+batch_normalization/StatefulPartitionedCallข-batch_normalization_1/StatefulPartitionedCallข-batch_normalization_2/StatefulPartitionedCallข-batch_normalization_3/StatefulPartitionedCallขconv2d/StatefulPartitionedCallข conv2d_1/StatefulPartitionedCallข conv2d_2/StatefulPartitionedCallข conv2d_3/StatefulPartitionedCallข conv2d_4/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_conv2d_kernelconv2d_conv2d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_2088ฺ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0-batch_normalization_batch_normalization_gamma,batch_normalization_batch_normalization_beta3batch_normalization_batch_normalization_moving_mean7batch_normalization_batch_normalization_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1684๒
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_2102็
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1736จ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_conv2d_1_kernelconv2d_1_conv2d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_2115๐
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:01batch_normalization_1_batch_normalization_1_gamma0batch_normalization_1_batch_normalization_1_beta7batch_normalization_1_batch_normalization_1_moving_mean;batch_normalization_1_batch_normalization_1_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1793๘
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_2129๋
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1845จ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_conv2d_2_kernelconv2d_2_conv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_2142๎
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:01batch_normalization_2_batch_normalization_2_gamma0batch_normalization_2_batch_normalization_2_beta7batch_normalization_2_batch_normalization_2_moving_mean;batch_normalization_2_batch_normalization_2_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1902๖
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_2156๋
max_pooling2d_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1954ฉ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_conv2d_3_kernelconv2d_3_conv2d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_2169๏
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:01batch_normalization_3_batch_normalization_3_gamma0batch_normalization_3_batch_normalization_3_beta7batch_normalization_3_batch_normalization_3_moving_mean;batch_normalization_3_batch_normalization_3_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2011๗
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_2183์
max_pooling2d_3/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2063จ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_conv2d_4_kernelconv2d_4_conv2d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_2197?
reshape/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_2214t
IdentityIdentity reshape/PartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????ฑ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*d
_input_shapesS
Q:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:_ [
1
_output_shapes
:?????????
&
_user_specified_nameconv2d_input



B__inference_conv2d_2_layer_call_and_return_conditional_losses_3243

inputs?
%conv2d_readvariableop_conv2d_2_kernel: @2
$biasadd_readvariableop_conv2d_2_bias:@
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOp%conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
ึ
๕
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3279

inputs8
*readvariableop_batch_normalization_2_gamma:@9
+readvariableop_1_batch_normalization_2_beta:@O
Afusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean:@U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance:@
identityขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1u
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_2_gamma*
_output_shapes
:@*
dtype0x
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_2_beta*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean*
_output_shapes
:@*
dtype0ฅ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance*
_output_shapes
:@*
dtype0ศ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@ฐ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs

J
.__inference_max_pooling2d_1_layer_call_fn_3221

inputs
identityื
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1845
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

๙
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1984

inputs9
*readvariableop_batch_normalization_3_gamma:	:
+readvariableop_1_batch_normalization_3_beta:	P
Afusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean:	V
Gfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance:	
identityขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1v
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_3_gamma*
_output_shapes	
:*
dtype0y
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_3_beta*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean*
_output_shapes	
:*
dtype0ฆ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance*
_output_shapes	
:*
dtype0อ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????ฐ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ุ
ช
'__inference_conv2d_3_layer_call_fn_3324

inputs*
conv2d_3_kernel:@
conv2d_3_bias:	
identityขStatefulPartitionedCall์
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_kernelconv2d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_2169x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????  @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
จ
'__inference_conv2d_1_layer_call_fn_3142

inputs)
conv2d_1_kernel: 
conv2d_1_bias: 
identityขStatefulPartitionedCallํ
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_kernelconv2d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_2115y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*4
_input_shapes#
!:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ๅ
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_3135

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ฤ
b
F__inference_activation_3_layer_call_and_return_conditional_losses_3398

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:?????????  c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????  "
identityIdentity:output:0*/
_input_shapes
:?????????  :X T
0
_output_shapes
:?????????  
 
_user_specified_nameinputs


จ
4__inference_batch_normalization_2_layer_call_fn_3252

inputs)
batch_normalization_2_gamma:@(
batch_normalization_2_beta:@/
!batch_normalization_2_moving_mean:@3
%batch_normalization_2_moving_variance:@
identityขStatefulPartitionedCall๑
StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_2_gammabatch_normalization_2_beta!batch_normalization_2_moving_mean%batch_normalization_2_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1875
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs



@__inference_conv2d_layer_call_and_return_conditional_losses_3061

inputs=
#conv2d_readvariableop_conv2d_kernel:0
"biasadd_readvariableop_conv2d_bias:
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOp#conv2d_readvariableop_conv2d_kernel*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????*
paddingSAME*
strides
u
BiasAdd/ReadVariableOpReadVariableOp"biasadd_readvariableop_conv2d_bias*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*4
_input_shapes#
!:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs


จ
4__inference_batch_normalization_2_layer_call_fn_3261

inputs)
batch_normalization_2_gamma:@(
batch_normalization_2_beta:@/
!batch_normalization_2_moving_mean:@3
%batch_normalization_2_moving_variance:@
identityขStatefulPartitionedCall๏
StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_2_gammabatch_normalization_2_beta!batch_normalization_2_moving_mean%batch_normalization_2_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1902
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	

2__inference_batch_normalization_layer_call_fn_3079

inputs'
batch_normalization_gamma:&
batch_normalization_beta:-
batch_normalization_moving_mean:1
#batch_normalization_moving_variance:
identityขStatefulPartitionedCallๅ
StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_gammabatch_normalization_betabatch_normalization_moving_mean#batch_normalization_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1684
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ผ

]
A__inference_reshape_layer_call_and_return_conditional_losses_3444

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ั
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:?????????]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:?????????"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
ฃ
ฐ	
"__inference_signature_wrapper_2766
conv2d_input'
conv2d_kernel:
conv2d_bias:'
batch_normalization_gamma:&
batch_normalization_beta:-
batch_normalization_moving_mean:1
#batch_normalization_moving_variance:)
conv2d_1_kernel: 
conv2d_1_bias: )
batch_normalization_1_gamma: (
batch_normalization_1_beta: /
!batch_normalization_1_moving_mean: 3
%batch_normalization_1_moving_variance: )
conv2d_2_kernel: @
conv2d_2_bias:@)
batch_normalization_2_gamma:@(
batch_normalization_2_beta:@/
!batch_normalization_2_moving_mean:@3
%batch_normalization_2_moving_variance:@*
conv2d_3_kernel:@
conv2d_3_bias:	*
batch_normalization_3_gamma:	)
batch_normalization_3_beta:	0
!batch_normalization_3_moving_mean:	4
%batch_normalization_3_moving_variance:	*
conv2d_4_kernel:
conv2d_4_bias:
identityขStatefulPartitionedCall๛
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_kernelconv2d_biasbatch_normalization_gammabatch_normalization_betabatch_normalization_moving_mean#batch_normalization_moving_varianceconv2d_1_kernelconv2d_1_biasbatch_normalization_1_gammabatch_normalization_1_beta!batch_normalization_1_moving_mean%batch_normalization_1_moving_varianceconv2d_2_kernelconv2d_2_biasbatch_normalization_2_gammabatch_normalization_2_beta!batch_normalization_2_moving_mean%batch_normalization_2_moving_varianceconv2d_3_kernelconv2d_3_biasbatch_normalization_3_gammabatch_normalization_3_beta!batch_normalization_3_moving_mean%batch_normalization_3_moving_varianceconv2d_4_kernelconv2d_4_bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_1635t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*d
_input_shapesS
Q:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:?????????
&
_user_specified_nameconv2d_input

๕
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1875

inputs8
*readvariableop_batch_normalization_2_gamma:@9
+readvariableop_1_batch_normalization_2_beta:@O
Afusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean:@U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance:@
identityขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1u
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_2_gamma*
_output_shapes
:@*
dtype0x
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_2_beta*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean*
_output_shapes
:@*
dtype0ฅ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance*
_output_shapes
:@*
dtype0ศ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@ฐ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs

H
,__inference_max_pooling2d_layer_call_fn_3130

inputs
identityี
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1736
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ล


B__inference_conv2d_3_layer_call_and_return_conditional_losses_2169

inputs@
%conv2d_readvariableop_conv2d_3_kernel:@3
$biasadd_readvariableop_conv2d_3_bias:	
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOp%conv2d_readvariableop_conv2d_3_kernel*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
x
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv2d_3_bias*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs


ฌ
4__inference_batch_normalization_3_layer_call_fn_3343

inputs*
batch_normalization_3_gamma:	)
batch_normalization_3_beta:	0
!batch_normalization_3_moving_mean:	4
%batch_normalization_3_moving_variance:	
identityขStatefulPartitionedCall๒
StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_3_gammabatch_normalization_3_beta!batch_normalization_3_moving_mean%batch_normalization_3_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1984
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*I
_input_shapes8
6:,???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ฯ
ท	
)__inference_sequential_layer_call_fn_2246
conv2d_input'
conv2d_kernel:
conv2d_bias:'
batch_normalization_gamma:&
batch_normalization_beta:-
batch_normalization_moving_mean:1
#batch_normalization_moving_variance:)
conv2d_1_kernel: 
conv2d_1_bias: )
batch_normalization_1_gamma: (
batch_normalization_1_beta: /
!batch_normalization_1_moving_mean: 3
%batch_normalization_1_moving_variance: )
conv2d_2_kernel: @
conv2d_2_bias:@)
batch_normalization_2_gamma:@(
batch_normalization_2_beta:@/
!batch_normalization_2_moving_mean:@3
%batch_normalization_2_moving_variance:@*
conv2d_3_kernel:@
conv2d_3_bias:	*
batch_normalization_3_gamma:	)
batch_normalization_3_beta:	0
!batch_normalization_3_moving_mean:	4
%batch_normalization_3_moving_variance:	*
conv2d_4_kernel:
conv2d_4_bias:
identityขStatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_kernelconv2d_biasbatch_normalization_gammabatch_normalization_betabatch_normalization_moving_mean#batch_normalization_moving_varianceconv2d_1_kernelconv2d_1_biasbatch_normalization_1_gammabatch_normalization_1_beta!batch_normalization_1_moving_mean%batch_normalization_1_moving_varianceconv2d_2_kernelconv2d_2_biasbatch_normalization_2_gammabatch_normalization_2_beta!batch_normalization_2_moving_mean%batch_normalization_2_moving_varianceconv2d_3_kernelconv2d_3_biasbatch_normalization_3_gammabatch_normalization_3_beta!batch_normalization_3_moving_mean%batch_normalization_3_moving_varianceconv2d_4_kernelconv2d_4_bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2217t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*d
_input_shapesS
Q:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:?????????
&
_user_specified_nameconv2d_input
ั

D__inference_sequential_layer_call_and_return_conditional_losses_2936

inputsD
*conv2d_conv2d_readvariableop_conv2d_kernel:7
)conv2d_biasadd_readvariableop_conv2d_bias:J
<batch_normalization_readvariableop_batch_normalization_gamma:K
=batch_normalization_readvariableop_1_batch_normalization_beta:a
Sbatch_normalization_fusedbatchnormv3_readvariableop_batch_normalization_moving_mean:g
Ybatch_normalization_fusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance:H
.conv2d_1_conv2d_readvariableop_conv2d_1_kernel: ;
-conv2d_1_biasadd_readvariableop_conv2d_1_bias: N
@batch_normalization_1_readvariableop_batch_normalization_1_gamma: O
Abatch_normalization_1_readvariableop_1_batch_normalization_1_beta: e
Wbatch_normalization_1_fusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean: k
]batch_normalization_1_fusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance: H
.conv2d_2_conv2d_readvariableop_conv2d_2_kernel: @;
-conv2d_2_biasadd_readvariableop_conv2d_2_bias:@N
@batch_normalization_2_readvariableop_batch_normalization_2_gamma:@O
Abatch_normalization_2_readvariableop_1_batch_normalization_2_beta:@e
Wbatch_normalization_2_fusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean:@k
]batch_normalization_2_fusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance:@I
.conv2d_3_conv2d_readvariableop_conv2d_3_kernel:@<
-conv2d_3_biasadd_readvariableop_conv2d_3_bias:	O
@batch_normalization_3_readvariableop_batch_normalization_3_gamma:	P
Abatch_normalization_3_readvariableop_1_batch_normalization_3_beta:	f
Wbatch_normalization_3_fusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean:	l
]batch_normalization_3_fusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance:	I
.conv2d_4_conv2d_readvariableop_conv2d_4_kernel:;
-conv2d_4_biasadd_readvariableop_conv2d_4_bias:
identityข3batch_normalization/FusedBatchNormV3/ReadVariableOpข5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ข"batch_normalization/ReadVariableOpข$batch_normalization/ReadVariableOp_1ข5batch_normalization_1/FusedBatchNormV3/ReadVariableOpข7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ข$batch_normalization_1/ReadVariableOpข&batch_normalization_1/ReadVariableOp_1ข5batch_normalization_2/FusedBatchNormV3/ReadVariableOpข7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ข$batch_normalization_2/ReadVariableOpข&batch_normalization_2/ReadVariableOp_1ข5batch_normalization_3/FusedBatchNormV3/ReadVariableOpข7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ข$batch_normalization_3/ReadVariableOpข&batch_normalization_3/ReadVariableOp_1ขconv2d/BiasAdd/ReadVariableOpขconv2d/Conv2D/ReadVariableOpขconv2d_1/BiasAdd/ReadVariableOpขconv2d_1/Conv2D/ReadVariableOpขconv2d_2/BiasAdd/ReadVariableOpขconv2d_2/Conv2D/ReadVariableOpขconv2d_3/BiasAdd/ReadVariableOpขconv2d_3/Conv2D/ReadVariableOpขconv2d_4/BiasAdd/ReadVariableOpขconv2d_4/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp*conv2d_conv2d_readvariableop_conv2d_kernel*&
_output_shapes
:*
dtype0ฉ
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????*
paddingSAME*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp)conv2d_biasadd_readvariableop_conv2d_bias*
_output_shapes
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????
"batch_normalization/ReadVariableOpReadVariableOp<batch_normalization_readvariableop_batch_normalization_gamma*
_output_shapes
:*
dtype0
$batch_normalization/ReadVariableOp_1ReadVariableOp=batch_normalization_readvariableop_1_batch_normalization_beta*
_output_shapes
:*
dtype0ร
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpSbatch_normalization_fusedbatchnormv3_readvariableop_batch_normalization_moving_mean*
_output_shapes
:*
dtype0ห
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpYbatch_normalization_fusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance*
_output_shapes
:*
dtype0ญ
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/BiasAdd:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:?????????:::::*
epsilon%o:*
is_training( }
activation/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:?????????ฎ
max_pooling2d/MaxPoolMaxPoolactivation/Relu:activations:0*1
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

conv2d_1/Conv2D/ReadVariableOpReadVariableOp.conv2d_1_conv2d_readvariableop_conv2d_1_kernel*&
_output_shapes
: *
dtype0ล
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
paddingSAME*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp-conv2d_1_biasadd_readvariableop_conv2d_1_bias*
_output_shapes
: *
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? ก
$batch_normalization_1/ReadVariableOpReadVariableOp@batch_normalization_1_readvariableop_batch_normalization_1_gamma*
_output_shapes
: *
dtype0ค
&batch_normalization_1/ReadVariableOp_1ReadVariableOpAbatch_normalization_1_readvariableop_1_batch_normalization_1_beta*
_output_shapes
: *
dtype0ษ
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpWbatch_normalization_1_fusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean*
_output_shapes
: *
dtype0ั
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]batch_normalization_1_fusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance*
_output_shapes
: *
dtype0น
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:????????? : : : : :*
epsilon%o:*
is_training( 
activation_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:????????? ฐ
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:?????????@@ *
ksize
*
paddingVALID*
strides

conv2d_2/Conv2D/ReadVariableOpReadVariableOp.conv2d_2_conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
: @*
dtype0ล
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp-conv2d_2_biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:@*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@ก
$batch_normalization_2/ReadVariableOpReadVariableOp@batch_normalization_2_readvariableop_batch_normalization_2_gamma*
_output_shapes
:@*
dtype0ค
&batch_normalization_2/ReadVariableOp_1ReadVariableOpAbatch_normalization_2_readvariableop_1_batch_normalization_2_beta*
_output_shapes
:@*
dtype0ษ
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpWbatch_normalization_2_fusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean*
_output_shapes
:@*
dtype0ั
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]batch_normalization_2_fusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance*
_output_shapes
:@*
dtype0ท
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@@:@:@:@:@:*
epsilon%o:*
is_training( 
activation_2/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@@@ฐ
max_pooling2d_2/MaxPoolMaxPoolactivation_2/Relu:activations:0*/
_output_shapes
:?????????  @*
ksize
*
paddingVALID*
strides

conv2d_3/Conv2D/ReadVariableOpReadVariableOp.conv2d_3_conv2d_readvariableop_conv2d_3_kernel*'
_output_shapes
:@*
dtype0ฦ
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp-conv2d_3_biasadd_readvariableop_conv2d_3_bias*
_output_shapes	
:*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ข
$batch_normalization_3/ReadVariableOpReadVariableOp@batch_normalization_3_readvariableop_batch_normalization_3_gamma*
_output_shapes	
:*
dtype0ฅ
&batch_normalization_3/ReadVariableOp_1ReadVariableOpAbatch_normalization_3_readvariableop_1_batch_normalization_3_beta*
_output_shapes	
:*
dtype0ส
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpWbatch_normalization_3_fusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean*
_output_shapes	
:*
dtype0า
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]batch_normalization_3_fusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance*
_output_shapes	
:*
dtype0ผ
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_3/BiasAdd:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????  :::::*
epsilon%o:*
is_training( 
activation_3/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????  ฑ
max_pooling2d_3/MaxPoolMaxPoolactivation_3/Relu:activations:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

conv2d_4/Conv2D/ReadVariableOpReadVariableOp.conv2d_4_conv2d_readvariableop_conv2d_4_kernel*'
_output_shapes
:*
dtype0ล
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp-conv2d_4_biasadd_readvariableop_conv2d_4_bias*
_output_shapes
:*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????X
reshape/ShapeShapeconv2d_4/Relu:activations:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:๙
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :ฏ
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape/ReshapeReshapeconv2d_4/Relu:activations:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:?????????l
IdentityIdentityreshape/Reshape:output:0^NoOp*
T0*,
_output_shapes
:?????????	
NoOpNoOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*d
_input_shapesS
Q:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ึ

O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3388

inputs9
*readvariableop_batch_normalization_3_gamma:	:
+readvariableop_1_batch_normalization_3_beta:	P
Afusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean:	V
Gfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance:	
identityขAssignNewValueขAssignNewValue_1ขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1v
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_3_gamma*
_output_shapes	
:*
dtype0y
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_3_beta*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean*
_output_shapes	
:*
dtype0ฆ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance*
_output_shapes	
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????:::::*
epsilon%o:*
exponential_avg_factor%
ื#<฿
AssignNewValueAssignVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_3_moving_meanFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ํ
AssignNewValue_1AssignVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????ิ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*I
_input_shapes8
6:,???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
็
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3317

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ฎY
ห
D__inference_sequential_layer_call_and_return_conditional_losses_2481

inputs.
conv2d_conv2d_kernel: 
conv2d_conv2d_bias:;
-batch_normalization_batch_normalization_gamma::
,batch_normalization_batch_normalization_beta:A
3batch_normalization_batch_normalization_moving_mean:E
7batch_normalization_batch_normalization_moving_variance:2
conv2d_1_conv2d_1_kernel: $
conv2d_1_conv2d_1_bias: ?
1batch_normalization_1_batch_normalization_1_gamma: >
0batch_normalization_1_batch_normalization_1_beta: E
7batch_normalization_1_batch_normalization_1_moving_mean: I
;batch_normalization_1_batch_normalization_1_moving_variance: 2
conv2d_2_conv2d_2_kernel: @$
conv2d_2_conv2d_2_bias:@?
1batch_normalization_2_batch_normalization_2_gamma:@>
0batch_normalization_2_batch_normalization_2_beta:@E
7batch_normalization_2_batch_normalization_2_moving_mean:@I
;batch_normalization_2_batch_normalization_2_moving_variance:@3
conv2d_3_conv2d_3_kernel:@%
conv2d_3_conv2d_3_bias:	@
1batch_normalization_3_batch_normalization_3_gamma:	?
0batch_normalization_3_batch_normalization_3_beta:	F
7batch_normalization_3_batch_normalization_3_moving_mean:	J
;batch_normalization_3_batch_normalization_3_moving_variance:	3
conv2d_4_conv2d_4_kernel:$
conv2d_4_conv2d_4_bias:
identityข+batch_normalization/StatefulPartitionedCallข-batch_normalization_1/StatefulPartitionedCallข-batch_normalization_2/StatefulPartitionedCallข-batch_normalization_3/StatefulPartitionedCallขconv2d/StatefulPartitionedCallข conv2d_1/StatefulPartitionedCallข conv2d_2/StatefulPartitionedCallข conv2d_3/StatefulPartitionedCallข conv2d_4/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_conv2d_kernelconv2d_conv2d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_2088ฺ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0-batch_normalization_batch_normalization_gamma,batch_normalization_batch_normalization_beta3batch_normalization_batch_normalization_moving_mean7batch_normalization_batch_normalization_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1684๒
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_2102็
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1736จ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_conv2d_1_kernelconv2d_1_conv2d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_2115๐
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:01batch_normalization_1_batch_normalization_1_gamma0batch_normalization_1_batch_normalization_1_beta7batch_normalization_1_batch_normalization_1_moving_mean;batch_normalization_1_batch_normalization_1_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1793๘
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_2129๋
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1845จ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_conv2d_2_kernelconv2d_2_conv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_2142๎
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:01batch_normalization_2_batch_normalization_2_gamma0batch_normalization_2_batch_normalization_2_beta7batch_normalization_2_batch_normalization_2_moving_mean;batch_normalization_2_batch_normalization_2_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1902๖
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_2156๋
max_pooling2d_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1954ฉ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_conv2d_3_kernelconv2d_3_conv2d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_2169๏
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:01batch_normalization_3_batch_normalization_3_gamma0batch_normalization_3_batch_normalization_3_beta7batch_normalization_3_batch_normalization_3_moving_mean;batch_normalization_3_batch_normalization_3_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2011๗
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_2183์
max_pooling2d_3/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2063จ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_conv2d_4_kernelconv2d_4_conv2d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_2197?
reshape/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_2214t
IdentityIdentity reshape/PartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????ฑ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ฝ
ฑ	
)__inference_sequential_layer_call_fn_2797

inputs'
conv2d_kernel:
conv2d_bias:'
batch_normalization_gamma:&
batch_normalization_beta:-
batch_normalization_moving_mean:1
#batch_normalization_moving_variance:)
conv2d_1_kernel: 
conv2d_1_bias: )
batch_normalization_1_gamma: (
batch_normalization_1_beta: /
!batch_normalization_1_moving_mean: 3
%batch_normalization_1_moving_variance: )
conv2d_2_kernel: @
conv2d_2_bias:@)
batch_normalization_2_gamma:@(
batch_normalization_2_beta:@/
!batch_normalization_2_moving_mean:@3
%batch_normalization_2_moving_variance:@*
conv2d_3_kernel:@
conv2d_3_bias:	*
batch_normalization_3_gamma:	)
batch_normalization_3_beta:	0
!batch_normalization_3_moving_mean:	4
%batch_normalization_3_moving_variance:	*
conv2d_4_kernel:
conv2d_4_bias:
identityขStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_kernelconv2d_biasbatch_normalization_gammabatch_normalization_betabatch_normalization_moving_mean#batch_normalization_moving_varianceconv2d_1_kernelconv2d_1_biasbatch_normalization_1_gammabatch_normalization_1_beta!batch_normalization_1_moving_mean%batch_normalization_1_moving_varianceconv2d_2_kernelconv2d_2_biasbatch_normalization_2_gammabatch_normalization_2_beta!batch_normalization_2_moving_mean%batch_normalization_2_moving_varianceconv2d_3_kernelconv2d_3_biasbatch_normalization_3_gammabatch_normalization_3_beta!batch_normalization_3_moving_mean%batch_normalization_3_moving_varianceconv2d_4_kernelconv2d_4_bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2217t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*d
_input_shapesS
Q:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ํฆ
ะ
D__inference_sequential_layer_call_and_return_conditional_losses_3044

inputsD
*conv2d_conv2d_readvariableop_conv2d_kernel:7
)conv2d_biasadd_readvariableop_conv2d_bias:J
<batch_normalization_readvariableop_batch_normalization_gamma:K
=batch_normalization_readvariableop_1_batch_normalization_beta:a
Sbatch_normalization_fusedbatchnormv3_readvariableop_batch_normalization_moving_mean:g
Ybatch_normalization_fusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance:H
.conv2d_1_conv2d_readvariableop_conv2d_1_kernel: ;
-conv2d_1_biasadd_readvariableop_conv2d_1_bias: N
@batch_normalization_1_readvariableop_batch_normalization_1_gamma: O
Abatch_normalization_1_readvariableop_1_batch_normalization_1_beta: e
Wbatch_normalization_1_fusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean: k
]batch_normalization_1_fusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance: H
.conv2d_2_conv2d_readvariableop_conv2d_2_kernel: @;
-conv2d_2_biasadd_readvariableop_conv2d_2_bias:@N
@batch_normalization_2_readvariableop_batch_normalization_2_gamma:@O
Abatch_normalization_2_readvariableop_1_batch_normalization_2_beta:@e
Wbatch_normalization_2_fusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean:@k
]batch_normalization_2_fusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance:@I
.conv2d_3_conv2d_readvariableop_conv2d_3_kernel:@<
-conv2d_3_biasadd_readvariableop_conv2d_3_bias:	O
@batch_normalization_3_readvariableop_batch_normalization_3_gamma:	P
Abatch_normalization_3_readvariableop_1_batch_normalization_3_beta:	f
Wbatch_normalization_3_fusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean:	l
]batch_normalization_3_fusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance:	I
.conv2d_4_conv2d_readvariableop_conv2d_4_kernel:;
-conv2d_4_biasadd_readvariableop_conv2d_4_bias:
identityข"batch_normalization/AssignNewValueข$batch_normalization/AssignNewValue_1ข3batch_normalization/FusedBatchNormV3/ReadVariableOpข5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ข"batch_normalization/ReadVariableOpข$batch_normalization/ReadVariableOp_1ข$batch_normalization_1/AssignNewValueข&batch_normalization_1/AssignNewValue_1ข5batch_normalization_1/FusedBatchNormV3/ReadVariableOpข7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ข$batch_normalization_1/ReadVariableOpข&batch_normalization_1/ReadVariableOp_1ข$batch_normalization_2/AssignNewValueข&batch_normalization_2/AssignNewValue_1ข5batch_normalization_2/FusedBatchNormV3/ReadVariableOpข7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ข$batch_normalization_2/ReadVariableOpข&batch_normalization_2/ReadVariableOp_1ข$batch_normalization_3/AssignNewValueข&batch_normalization_3/AssignNewValue_1ข5batch_normalization_3/FusedBatchNormV3/ReadVariableOpข7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ข$batch_normalization_3/ReadVariableOpข&batch_normalization_3/ReadVariableOp_1ขconv2d/BiasAdd/ReadVariableOpขconv2d/Conv2D/ReadVariableOpขconv2d_1/BiasAdd/ReadVariableOpขconv2d_1/Conv2D/ReadVariableOpขconv2d_2/BiasAdd/ReadVariableOpขconv2d_2/Conv2D/ReadVariableOpขconv2d_3/BiasAdd/ReadVariableOpขconv2d_3/Conv2D/ReadVariableOpขconv2d_4/BiasAdd/ReadVariableOpขconv2d_4/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp*conv2d_conv2d_readvariableop_conv2d_kernel*&
_output_shapes
:*
dtype0ฉ
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????*
paddingSAME*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp)conv2d_biasadd_readvariableop_conv2d_bias*
_output_shapes
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????
"batch_normalization/ReadVariableOpReadVariableOp<batch_normalization_readvariableop_batch_normalization_gamma*
_output_shapes
:*
dtype0
$batch_normalization/ReadVariableOp_1ReadVariableOp=batch_normalization_readvariableop_1_batch_normalization_beta*
_output_shapes
:*
dtype0ร
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpSbatch_normalization_fusedbatchnormv3_readvariableop_batch_normalization_moving_mean*
_output_shapes
:*
dtype0ห
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpYbatch_normalization_fusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance*
_output_shapes
:*
dtype0ป
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/BiasAdd:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:?????????:::::*
epsilon%o:*
exponential_avg_factor%
ื#<ญ
"batch_normalization/AssignNewValueAssignVariableOpSbatch_normalization_fusedbatchnormv3_readvariableop_batch_normalization_moving_mean1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ป
$batch_normalization/AssignNewValue_1AssignVariableOpYbatch_normalization_fusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
activation/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:?????????ฎ
max_pooling2d/MaxPoolMaxPoolactivation/Relu:activations:0*1
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

conv2d_1/Conv2D/ReadVariableOpReadVariableOp.conv2d_1_conv2d_readvariableop_conv2d_1_kernel*&
_output_shapes
: *
dtype0ล
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
paddingSAME*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp-conv2d_1_biasadd_readvariableop_conv2d_1_bias*
_output_shapes
: *
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? ก
$batch_normalization_1/ReadVariableOpReadVariableOp@batch_normalization_1_readvariableop_batch_normalization_1_gamma*
_output_shapes
: *
dtype0ค
&batch_normalization_1/ReadVariableOp_1ReadVariableOpAbatch_normalization_1_readvariableop_1_batch_normalization_1_beta*
_output_shapes
: *
dtype0ษ
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpWbatch_normalization_1_fusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean*
_output_shapes
: *
dtype0ั
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]batch_normalization_1_fusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance*
_output_shapes
: *
dtype0ว
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:????????? : : : : :*
epsilon%o:*
exponential_avg_factor%
ื#<ท
$batch_normalization_1/AssignNewValueAssignVariableOpWbatch_normalization_1_fusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ล
&batch_normalization_1/AssignNewValue_1AssignVariableOp]batch_normalization_1_fusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
activation_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:????????? ฐ
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:?????????@@ *
ksize
*
paddingVALID*
strides

conv2d_2/Conv2D/ReadVariableOpReadVariableOp.conv2d_2_conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
: @*
dtype0ล
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp-conv2d_2_biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:@*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@ก
$batch_normalization_2/ReadVariableOpReadVariableOp@batch_normalization_2_readvariableop_batch_normalization_2_gamma*
_output_shapes
:@*
dtype0ค
&batch_normalization_2/ReadVariableOp_1ReadVariableOpAbatch_normalization_2_readvariableop_1_batch_normalization_2_beta*
_output_shapes
:@*
dtype0ษ
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpWbatch_normalization_2_fusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean*
_output_shapes
:@*
dtype0ั
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]batch_normalization_2_fusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance*
_output_shapes
:@*
dtype0ล
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
ื#<ท
$batch_normalization_2/AssignNewValueAssignVariableOpWbatch_normalization_2_fusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ล
&batch_normalization_2/AssignNewValue_1AssignVariableOp]batch_normalization_2_fusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
activation_2/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@@@ฐ
max_pooling2d_2/MaxPoolMaxPoolactivation_2/Relu:activations:0*/
_output_shapes
:?????????  @*
ksize
*
paddingVALID*
strides

conv2d_3/Conv2D/ReadVariableOpReadVariableOp.conv2d_3_conv2d_readvariableop_conv2d_3_kernel*'
_output_shapes
:@*
dtype0ฦ
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp-conv2d_3_biasadd_readvariableop_conv2d_3_bias*
_output_shapes	
:*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ข
$batch_normalization_3/ReadVariableOpReadVariableOp@batch_normalization_3_readvariableop_batch_normalization_3_gamma*
_output_shapes	
:*
dtype0ฅ
&batch_normalization_3/ReadVariableOp_1ReadVariableOpAbatch_normalization_3_readvariableop_1_batch_normalization_3_beta*
_output_shapes	
:*
dtype0ส
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpWbatch_normalization_3_fusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean*
_output_shapes	
:*
dtype0า
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]batch_normalization_3_fusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance*
_output_shapes	
:*
dtype0ส
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_3/BiasAdd:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????  :::::*
epsilon%o:*
exponential_avg_factor%
ื#<ท
$batch_normalization_3/AssignNewValueAssignVariableOpWbatch_normalization_3_fusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean3batch_normalization_3/FusedBatchNormV3:batch_mean:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ล
&batch_normalization_3/AssignNewValue_1AssignVariableOp]batch_normalization_3_fusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance7batch_normalization_3/FusedBatchNormV3:batch_variance:08^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
activation_3/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????  ฑ
max_pooling2d_3/MaxPoolMaxPoolactivation_3/Relu:activations:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

conv2d_4/Conv2D/ReadVariableOpReadVariableOp.conv2d_4_conv2d_readvariableop_conv2d_4_kernel*'
_output_shapes
:*
dtype0ล
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp-conv2d_4_biasadd_readvariableop_conv2d_4_bias*
_output_shapes
:*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????X
reshape/ShapeShapeconv2d_4/Relu:activations:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:๙
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :ฏ
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape/ReshapeReshapeconv2d_4/Relu:activations:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:?????????l
IdentityIdentityreshape/Reshape:output:0^NoOp*
T0*,
_output_shapes
:?????????อ
NoOpNoOp#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1%^batch_normalization_3/AssignNewValue'^batch_normalization_3/AssignNewValue_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*d
_input_shapesS
Q:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2P
&batch_normalization_3/AssignNewValue_1&batch_normalization_3/AssignNewValue_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ต
ฑ	
)__inference_sequential_layer_call_fn_2828

inputs'
conv2d_kernel:
conv2d_bias:'
batch_normalization_gamma:&
batch_normalization_beta:-
batch_normalization_moving_mean:1
#batch_normalization_moving_variance:)
conv2d_1_kernel: 
conv2d_1_bias: )
batch_normalization_1_gamma: (
batch_normalization_1_beta: /
!batch_normalization_1_moving_mean: 3
%batch_normalization_1_moving_variance: )
conv2d_2_kernel: @
conv2d_2_bias:@)
batch_normalization_2_gamma:@(
batch_normalization_2_beta:@/
!batch_normalization_2_moving_mean:@3
%batch_normalization_2_moving_variance:@*
conv2d_3_kernel:@
conv2d_3_bias:	*
batch_normalization_3_gamma:	)
batch_normalization_3_beta:	0
!batch_normalization_3_moving_mean:	4
%batch_normalization_3_moving_variance:	*
conv2d_4_kernel:
conv2d_4_bias:
identityขStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_kernelconv2d_biasbatch_normalization_gammabatch_normalization_betabatch_normalization_moving_mean#batch_normalization_moving_varianceconv2d_1_kernelconv2d_1_biasbatch_normalization_1_gammabatch_normalization_1_beta!batch_normalization_1_moving_mean%batch_normalization_1_moving_varianceconv2d_2_kernelconv2d_2_biasbatch_normalization_2_gammabatch_normalization_2_beta!batch_normalization_2_moving_mean%batch_normalization_2_moving_varianceconv2d_3_kernelconv2d_3_biasbatch_normalization_3_gammabatch_normalization_3_beta!batch_normalization_3_moving_mean%batch_normalization_3_moving_varianceconv2d_4_kernelconv2d_4_bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2481t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*d
_input_shapesS
Q:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

J
.__inference_max_pooling2d_3_layer_call_fn_3403

inputs
identityื
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2063
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
็
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3408

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
ฑ
__inference__wrapped_model_1635
conv2d_inputO
5sequential_conv2d_conv2d_readvariableop_conv2d_kernel:B
4sequential_conv2d_biasadd_readvariableop_conv2d_bias:U
Gsequential_batch_normalization_readvariableop_batch_normalization_gamma:V
Hsequential_batch_normalization_readvariableop_1_batch_normalization_beta:l
^sequential_batch_normalization_fusedbatchnormv3_readvariableop_batch_normalization_moving_mean:r
dsequential_batch_normalization_fusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance:S
9sequential_conv2d_1_conv2d_readvariableop_conv2d_1_kernel: F
8sequential_conv2d_1_biasadd_readvariableop_conv2d_1_bias: Y
Ksequential_batch_normalization_1_readvariableop_batch_normalization_1_gamma: Z
Lsequential_batch_normalization_1_readvariableop_1_batch_normalization_1_beta: p
bsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean: v
hsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance: S
9sequential_conv2d_2_conv2d_readvariableop_conv2d_2_kernel: @F
8sequential_conv2d_2_biasadd_readvariableop_conv2d_2_bias:@Y
Ksequential_batch_normalization_2_readvariableop_batch_normalization_2_gamma:@Z
Lsequential_batch_normalization_2_readvariableop_1_batch_normalization_2_beta:@p
bsequential_batch_normalization_2_fusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean:@v
hsequential_batch_normalization_2_fusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance:@T
9sequential_conv2d_3_conv2d_readvariableop_conv2d_3_kernel:@G
8sequential_conv2d_3_biasadd_readvariableop_conv2d_3_bias:	Z
Ksequential_batch_normalization_3_readvariableop_batch_normalization_3_gamma:	[
Lsequential_batch_normalization_3_readvariableop_1_batch_normalization_3_beta:	q
bsequential_batch_normalization_3_fusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean:	w
hsequential_batch_normalization_3_fusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance:	T
9sequential_conv2d_4_conv2d_readvariableop_conv2d_4_kernel:F
8sequential_conv2d_4_biasadd_readvariableop_conv2d_4_bias:
identityข>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpข@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ข-sequential/batch_normalization/ReadVariableOpข/sequential/batch_normalization/ReadVariableOp_1ข@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpขBsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ข/sequential/batch_normalization_1/ReadVariableOpข1sequential/batch_normalization_1/ReadVariableOp_1ข@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOpขBsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ข/sequential/batch_normalization_2/ReadVariableOpข1sequential/batch_normalization_2/ReadVariableOp_1ข@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOpขBsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ข/sequential/batch_normalization_3/ReadVariableOpข1sequential/batch_normalization_3/ReadVariableOp_1ข(sequential/conv2d/BiasAdd/ReadVariableOpข'sequential/conv2d/Conv2D/ReadVariableOpข*sequential/conv2d_1/BiasAdd/ReadVariableOpข)sequential/conv2d_1/Conv2D/ReadVariableOpข*sequential/conv2d_2/BiasAdd/ReadVariableOpข)sequential/conv2d_2/Conv2D/ReadVariableOpข*sequential/conv2d_3/BiasAdd/ReadVariableOpข)sequential/conv2d_3/Conv2D/ReadVariableOpข*sequential/conv2d_4/BiasAdd/ReadVariableOpข)sequential/conv2d_4/Conv2D/ReadVariableOpฅ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp5sequential_conv2d_conv2d_readvariableop_conv2d_kernel*&
_output_shapes
:*
dtype0ล
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????*
paddingSAME*
strides

(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_biasadd_readvariableop_conv2d_bias*
_output_shapes
:*
dtype0ต
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ฑ
-sequential/batch_normalization/ReadVariableOpReadVariableOpGsequential_batch_normalization_readvariableop_batch_normalization_gamma*
_output_shapes
:*
dtype0ด
/sequential/batch_normalization/ReadVariableOp_1ReadVariableOpHsequential_batch_normalization_readvariableop_1_batch_normalization_beta*
_output_shapes
:*
dtype0ู
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp^sequential_batch_normalization_fusedbatchnormv3_readvariableop_batch_normalization_moving_mean*
_output_shapes
:*
dtype0แ
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpdsequential_batch_normalization_fusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance*
_output_shapes
:*
dtype0๏
/sequential/batch_normalization/FusedBatchNormV3FusedBatchNormV3"sequential/conv2d/BiasAdd:output:05sequential/batch_normalization/ReadVariableOp:value:07sequential/batch_normalization/ReadVariableOp_1:value:0Fsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Hsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:?????????:::::*
epsilon%o:*
is_training( 
sequential/activation/ReluRelu3sequential/batch_normalization/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:?????????ฤ
 sequential/max_pooling2d/MaxPoolMaxPool(sequential/activation/Relu:activations:0*1
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
ซ
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp9sequential_conv2d_1_conv2d_readvariableop_conv2d_1_kernel*&
_output_shapes
: *
dtype0ๆ
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
paddingSAME*
strides

*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp8sequential_conv2d_1_biasadd_readvariableop_conv2d_1_bias*
_output_shapes
: *
dtype0ป
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? ท
/sequential/batch_normalization_1/ReadVariableOpReadVariableOpKsequential_batch_normalization_1_readvariableop_batch_normalization_1_gamma*
_output_shapes
: *
dtype0บ
1sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOpLsequential_batch_normalization_1_readvariableop_1_batch_normalization_1_beta*
_output_shapes
: *
dtype0฿
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpbsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean*
_output_shapes
: *
dtype0็
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOphsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance*
_output_shapes
: *
dtype0๛
1sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3$sequential/conv2d_1/BiasAdd:output:07sequential/batch_normalization_1/ReadVariableOp:value:09sequential/batch_normalization_1/ReadVariableOp_1:value:0Hsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:????????? : : : : :*
epsilon%o:*
is_training( 
sequential/activation_1/ReluRelu5sequential/batch_normalization_1/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:????????? ฦ
"sequential/max_pooling2d_1/MaxPoolMaxPool*sequential/activation_1/Relu:activations:0*/
_output_shapes
:?????????@@ *
ksize
*
paddingVALID*
strides
ซ
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp9sequential_conv2d_2_conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
: @*
dtype0ๆ
sequential/conv2d_2/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides

*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp8sequential_conv2d_2_biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:@*
dtype0น
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@ท
/sequential/batch_normalization_2/ReadVariableOpReadVariableOpKsequential_batch_normalization_2_readvariableop_batch_normalization_2_gamma*
_output_shapes
:@*
dtype0บ
1sequential/batch_normalization_2/ReadVariableOp_1ReadVariableOpLsequential_batch_normalization_2_readvariableop_1_batch_normalization_2_beta*
_output_shapes
:@*
dtype0฿
@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpbsequential_batch_normalization_2_fusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean*
_output_shapes
:@*
dtype0็
Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOphsequential_batch_normalization_2_fusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance*
_output_shapes
:@*
dtype0๙
1sequential/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3$sequential/conv2d_2/BiasAdd:output:07sequential/batch_normalization_2/ReadVariableOp:value:09sequential/batch_normalization_2/ReadVariableOp_1:value:0Hsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@@:@:@:@:@:*
epsilon%o:*
is_training( 
sequential/activation_2/ReluRelu5sequential/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@@@ฦ
"sequential/max_pooling2d_2/MaxPoolMaxPool*sequential/activation_2/Relu:activations:0*/
_output_shapes
:?????????  @*
ksize
*
paddingVALID*
strides
ฌ
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp9sequential_conv2d_3_conv2d_readvariableop_conv2d_3_kernel*'
_output_shapes
:@*
dtype0็
sequential/conv2d_3/Conv2DConv2D+sequential/max_pooling2d_2/MaxPool:output:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
?
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp8sequential_conv2d_3_biasadd_readvariableop_conv2d_3_bias*
_output_shapes	
:*
dtype0บ
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ธ
/sequential/batch_normalization_3/ReadVariableOpReadVariableOpKsequential_batch_normalization_3_readvariableop_batch_normalization_3_gamma*
_output_shapes	
:*
dtype0ป
1sequential/batch_normalization_3/ReadVariableOp_1ReadVariableOpLsequential_batch_normalization_3_readvariableop_1_batch_normalization_3_beta*
_output_shapes	
:*
dtype0เ
@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpbsequential_batch_normalization_3_fusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean*
_output_shapes	
:*
dtype0่
Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOphsequential_batch_normalization_3_fusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance*
_output_shapes	
:*
dtype0?
1sequential/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3$sequential/conv2d_3/BiasAdd:output:07sequential/batch_normalization_3/ReadVariableOp:value:09sequential/batch_normalization_3/ReadVariableOp_1:value:0Hsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????  :::::*
epsilon%o:*
is_training( 
sequential/activation_3/ReluRelu5sequential/batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????  ว
"sequential/max_pooling2d_3/MaxPoolMaxPool*sequential/activation_3/Relu:activations:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
ฌ
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp9sequential_conv2d_4_conv2d_readvariableop_conv2d_4_kernel*'
_output_shapes
:*
dtype0ๆ
sequential/conv2d_4/Conv2DConv2D+sequential/max_pooling2d_3/MaxPool:output:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides

*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp8sequential_conv2d_4_biasadd_readvariableop_conv2d_4_bias*
_output_shapes
:*
dtype0น
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????n
sequential/reshape/ShapeShape&sequential/conv2d_4/Relu:activations:0*
T0*
_output_shapes
:p
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฐ
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :d
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:ฏ
sequential/reshape/ReshapeReshape&sequential/conv2d_4/Relu:activations:0)sequential/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:?????????w
IdentityIdentity#sequential/reshape/Reshape:output:0^NoOp*
T0*,
_output_shapes
:?????????ฏ
NoOpNoOp?^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpA^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1.^sequential/batch_normalization/ReadVariableOp0^sequential/batch_normalization/ReadVariableOp_1A^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_1/ReadVariableOp2^sequential/batch_normalization_1/ReadVariableOp_1A^sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_2/ReadVariableOp2^sequential/batch_normalization_2/ReadVariableOp_1A^sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_3/ReadVariableOp2^sequential/batch_normalization_3/ReadVariableOp_1)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*d
_input_shapesS
Q:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp2
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_12^
-sequential/batch_normalization/ReadVariableOp-sequential/batch_normalization/ReadVariableOp2b
/sequential/batch_normalization/ReadVariableOp_1/sequential/batch_normalization/ReadVariableOp_12
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12b
/sequential/batch_normalization_1/ReadVariableOp/sequential/batch_normalization_1/ReadVariableOp2f
1sequential/batch_normalization_1/ReadVariableOp_11sequential/batch_normalization_1/ReadVariableOp_12
@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2
Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12b
/sequential/batch_normalization_2/ReadVariableOp/sequential/batch_normalization_2/ReadVariableOp2f
1sequential/batch_normalization_2/ReadVariableOp_11sequential/batch_normalization_2/ReadVariableOp_12
@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2
Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12b
/sequential/batch_normalization_3/ReadVariableOp/sequential/batch_normalization_3/ReadVariableOp2f
1sequential/batch_normalization_3/ReadVariableOp_11sequential/batch_normalization_3/ReadVariableOp_12T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp:_ [
1
_output_shapes
:?????????
&
_user_specified_nameconv2d_input
๐
`
D__inference_activation_layer_call_and_return_conditional_losses_2102

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:?????????d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
๐

O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1793

inputs8
*readvariableop_batch_normalization_1_gamma: 9
+readvariableop_1_batch_normalization_1_beta: O
Afusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean: U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance: 
identityขAssignNewValueขAssignNewValue_1ขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1u
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_1_gamma*
_output_shapes
: *
dtype0x
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_1_beta*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean*
_output_shapes
: *
dtype0ฅ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance*
_output_shapes
: *
dtype0ึ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o:*
exponential_avg_factor%
ื#<฿
AssignNewValueAssignVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_1_moving_meanFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ํ
AssignNewValue_1AssignVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ิ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ๆ

]
A__inference_reshape_layer_call_and_return_conditional_losses_2214

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ั
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:?????????]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
ว
ท	
)__inference_sequential_layer_call_fn_2637
conv2d_input'
conv2d_kernel:
conv2d_bias:'
batch_normalization_gamma:&
batch_normalization_beta:-
batch_normalization_moving_mean:1
#batch_normalization_moving_variance:)
conv2d_1_kernel: 
conv2d_1_bias: )
batch_normalization_1_gamma: (
batch_normalization_1_beta: /
!batch_normalization_1_moving_mean: 3
%batch_normalization_1_moving_variance: )
conv2d_2_kernel: @
conv2d_2_bias:@)
batch_normalization_2_gamma:@(
batch_normalization_2_beta:@/
!batch_normalization_2_moving_mean:@3
%batch_normalization_2_moving_variance:@*
conv2d_3_kernel:@
conv2d_3_bias:	*
batch_normalization_3_gamma:	)
batch_normalization_3_beta:	0
!batch_normalization_3_moving_mean:	4
%batch_normalization_3_moving_variance:	*
conv2d_4_kernel:
conv2d_4_bias:
identityขStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_kernelconv2d_biasbatch_normalization_gammabatch_normalization_betabatch_normalization_moving_mean#batch_normalization_moving_varianceconv2d_1_kernelconv2d_1_biasbatch_normalization_1_gammabatch_normalization_1_beta!batch_normalization_1_moving_mean%batch_normalization_1_moving_varianceconv2d_2_kernelconv2d_2_biasbatch_normalization_2_gammabatch_normalization_2_beta!batch_normalization_2_moving_mean%batch_normalization_2_moving_varianceconv2d_3_kernelconv2d_3_biasbatch_normalization_3_gammabatch_normalization_3_beta!batch_normalization_3_moving_mean%batch_normalization_3_moving_varianceconv2d_4_kernelconv2d_4_bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2481t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*d
_input_shapesS
Q:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:?????????
&
_user_specified_nameconv2d_input
๔


B__inference_conv2d_4_layer_call_and_return_conditional_losses_3426

inputs@
%conv2d_readvariableop_conv2d_4_kernel:2
$biasadd_readvariableop_conv2d_4_bias:
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOp%conv2d_readvariableop_conv2d_4_kernel*'
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv2d_4_bias*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*3
_input_shapes"
 :?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs


จ
4__inference_batch_normalization_1_layer_call_fn_3170

inputs)
batch_normalization_1_gamma: (
batch_normalization_1_beta: /
!batch_normalization_1_moving_mean: 3
%batch_normalization_1_moving_variance: 
identityขStatefulPartitionedCall๏
StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_1_gammabatch_normalization_1_beta!batch_normalization_1_moving_mean%batch_normalization_1_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1793
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ฦ
`
D__inference_activation_layer_call_and_return_conditional_losses_3125

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:?????????d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
พ


@__inference_conv2d_layer_call_and_return_conditional_losses_2088

inputs=
#conv2d_readvariableop_conv2d_kernel:0
"biasadd_readvariableop_conv2d_bias:
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOp#conv2d_readvariableop_conv2d_kernel*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????*
paddingSAME*
strides
u
BiasAdd/ReadVariableOpReadVariableOp"biasadd_readvariableop_conv2d_bias*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ถY
ห
D__inference_sequential_layer_call_and_return_conditional_losses_2217

inputs.
conv2d_conv2d_kernel: 
conv2d_conv2d_bias:;
-batch_normalization_batch_normalization_gamma::
,batch_normalization_batch_normalization_beta:A
3batch_normalization_batch_normalization_moving_mean:E
7batch_normalization_batch_normalization_moving_variance:2
conv2d_1_conv2d_1_kernel: $
conv2d_1_conv2d_1_bias: ?
1batch_normalization_1_batch_normalization_1_gamma: >
0batch_normalization_1_batch_normalization_1_beta: E
7batch_normalization_1_batch_normalization_1_moving_mean: I
;batch_normalization_1_batch_normalization_1_moving_variance: 2
conv2d_2_conv2d_2_kernel: @$
conv2d_2_conv2d_2_bias:@?
1batch_normalization_2_batch_normalization_2_gamma:@>
0batch_normalization_2_batch_normalization_2_beta:@E
7batch_normalization_2_batch_normalization_2_moving_mean:@I
;batch_normalization_2_batch_normalization_2_moving_variance:@3
conv2d_3_conv2d_3_kernel:@%
conv2d_3_conv2d_3_bias:	@
1batch_normalization_3_batch_normalization_3_gamma:	?
0batch_normalization_3_batch_normalization_3_beta:	F
7batch_normalization_3_batch_normalization_3_moving_mean:	J
;batch_normalization_3_batch_normalization_3_moving_variance:	3
conv2d_4_conv2d_4_kernel:$
conv2d_4_conv2d_4_bias:
identityข+batch_normalization/StatefulPartitionedCallข-batch_normalization_1/StatefulPartitionedCallข-batch_normalization_2/StatefulPartitionedCallข-batch_normalization_3/StatefulPartitionedCallขconv2d/StatefulPartitionedCallข conv2d_1/StatefulPartitionedCallข conv2d_2/StatefulPartitionedCallข conv2d_3/StatefulPartitionedCallข conv2d_4/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_conv2d_kernelconv2d_conv2d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_2088?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0-batch_normalization_batch_normalization_gamma,batch_normalization_batch_normalization_beta3batch_normalization_batch_normalization_moving_mean7batch_normalization_batch_normalization_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1657๒
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_2102็
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1736จ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_conv2d_1_kernelconv2d_1_conv2d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_2115๒
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:01batch_normalization_1_batch_normalization_1_gamma0batch_normalization_1_batch_normalization_1_beta7batch_normalization_1_batch_normalization_1_moving_mean;batch_normalization_1_batch_normalization_1_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1766๘
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_2129๋
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1845จ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_conv2d_2_kernelconv2d_2_conv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_2142๐
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:01batch_normalization_2_batch_normalization_2_gamma0batch_normalization_2_batch_normalization_2_beta7batch_normalization_2_batch_normalization_2_moving_mean;batch_normalization_2_batch_normalization_2_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1875๖
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_2156๋
max_pooling2d_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1954ฉ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_conv2d_3_kernelconv2d_3_conv2d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_2169๑
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:01batch_normalization_3_batch_normalization_3_gamma0batch_normalization_3_batch_normalization_3_beta7batch_normalization_3_batch_normalization_3_moving_mean;batch_normalization_3_batch_normalization_3_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1984๗
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_2183์
max_pooling2d_3/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2063จ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_conv2d_4_kernelconv2d_4_conv2d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_2197?
reshape/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_2214t
IdentityIdentity reshape/PartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????ฑ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs


จ
4__inference_batch_normalization_1_layer_call_fn_3161

inputs)
batch_normalization_1_gamma: (
batch_normalization_1_beta: /
!batch_normalization_1_moving_mean: 3
%batch_normalization_1_moving_variance: 
identityขStatefulPartitionedCall๑
StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_1_gammabatch_normalization_1_beta!batch_normalization_1_moving_mean%batch_normalization_1_moving_variance*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1766
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ๆ
๙
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3370

inputs9
*readvariableop_batch_normalization_3_gamma:	:
+readvariableop_1_batch_normalization_3_beta:	P
Afusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean:	V
Gfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance:	
identityขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1v
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_3_gamma*
_output_shapes	
:*
dtype0y
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_3_beta*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean*
_output_shapes	
:*
dtype0ฆ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance*
_output_shapes	
:*
dtype0อ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????ฐ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*I
_input_shapes8
6:,???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1845

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs


B__inference_conv2d_4_layer_call_and_return_conditional_losses_2197

inputs@
%conv2d_readvariableop_conv2d_4_kernel:2
$biasadd_readvariableop_conv2d_4_bias:
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOp%conv2d_readvariableop_conv2d_4_kernel*'
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv2d_4_bias*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ึ
๕
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3188

inputs8
*readvariableop_batch_normalization_1_gamma: 9
+readvariableop_1_batch_normalization_1_beta: O
Afusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean: U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance: 
identityขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1u
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_1_gamma*
_output_shapes
: *
dtype0x
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_1_beta*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean*
_output_shapes
: *
dtype0ฅ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance*
_output_shapes
: *
dtype0ศ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ฐ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ิ
จ
'__inference_conv2d_2_layer_call_fn_3233

inputs)
conv2d_2_kernel: @
conv2d_2_bias:@
identityขStatefulPartitionedCall๋
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_kernelconv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_2142w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????@@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs

c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1736

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs



B__inference_conv2d_3_layer_call_and_return_conditional_losses_3334

inputs@
%conv2d_readvariableop_conv2d_3_kernel:@3
$biasadd_readvariableop_conv2d_3_bias:	
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOp%conv2d_readvariableop_conv2d_3_kernel*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
x
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv2d_3_bias*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs



B__inference_conv2d_1_layer_call_and_return_conditional_losses_3152

inputs?
%conv2d_readvariableop_conv2d_1_kernel: 2
$biasadd_readvariableop_conv2d_1_bias: 
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOp%conv2d_readvariableop_conv2d_1_kernel*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
paddingSAME*
strides
w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv2d_1_bias*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*4
_input_shapes#
!:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ื
ฉ
'__inference_conv2d_4_layer_call_fn_3415

inputs*
conv2d_4_kernel:
conv2d_4_bias:
identityขStatefulPartitionedCall๋
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_kernelconv2d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_2197w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*3
_input_shapes"
 :?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs"ฟL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ร
serving_defaultฏ
O
conv2d_input?
serving_default_conv2d_input:0?????????@
reshape5
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?ญ
ย
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer_with_weights-8
layer-16
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op"
_tf_keras_layer
๊
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+axis
	,gamma
-beta
.moving_mean
/moving_variance"
_tf_keras_layer
ฅ
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
ฅ
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
?
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias
 D_jit_compiled_convolution_op"
_tf_keras_layer
๊
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
Kaxis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance"
_tf_keras_layer
ฅ
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
ฅ
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
?
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

bkernel
cbias
 d_jit_compiled_convolution_op"
_tf_keras_layer
๊
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
kaxis
	lgamma
mbeta
nmoving_mean
omoving_variance"
_tf_keras_layer
ฅ
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
ฅ
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
โ
|	variables
}trainable_variables
~regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
๕
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta
moving_mean
moving_variance"
_tf_keras_layer
ซ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ซ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ๆ
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+ก&call_and_return_all_conditional_losses
ขkernel
	ฃbias
!ค_jit_compiled_convolution_op"
_tf_keras_layer
ซ
ฅ	variables
ฆtrainable_variables
งregularization_losses
จ	keras_api
ฉ__call__
+ช&call_and_return_all_conditional_losses"
_tf_keras_layer
๎
"0
#1
,2
-3
.4
/5
B6
C7
L8
M9
N10
O11
b12
c13
l14
m15
n16
o17
18
19
20
21
22
23
ข24
ฃ25"
trackable_list_wrapper
ฌ
"0
#1
,2
-3
B4
C5
L6
M7
b8
c9
l10
m11
12
13
14
15
ข16
ฃ17"
trackable_list_wrapper
 "
trackable_list_wrapper
ฯ
ซnon_trainable_variables
ฌlayers
ญmetrics
 ฎlayer_regularization_losses
ฏlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
โ
ฐtrace_0
ฑtrace_1
ฒtrace_2
ณtrace_32๏
)__inference_sequential_layer_call_fn_2246
)__inference_sequential_layer_call_fn_2797
)__inference_sequential_layer_call_fn_2828
)__inference_sequential_layer_call_fn_2637ภ
ทฒณ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 zฐtrace_0zฑtrace_1zฒtrace_2zณtrace_3
ฮ
ดtrace_0
ตtrace_1
ถtrace_2
ทtrace_32?
D__inference_sequential_layer_call_and_return_conditional_losses_2936
D__inference_sequential_layer_call_and_return_conditional_losses_3044
D__inference_sequential_layer_call_and_return_conditional_losses_2685
D__inference_sequential_layer_call_and_return_conditional_losses_2733ภ
ทฒณ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 zดtrace_0zตtrace_1zถtrace_2zทtrace_3
ฯBฬ
__inference__wrapped_model_1635conv2d_input"
ฒ
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
M
	ธiter

นdecay
บlearning_rate
ปmomentum"
	optimizer
-
ผserving_default"
signature_map
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
ฝnon_trainable_variables
พlayers
ฟmetrics
 ภlayer_regularization_losses
มlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
๋
ยtrace_02ฬ
%__inference_conv2d_layer_call_fn_3051ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zยtrace_0

รtrace_02็
@__inference_conv2d_layer_call_and_return_conditional_losses_3061ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zรtrace_0
':%2conv2d/kernel
:2conv2d/bias
ด2ฑฎ
ฃฒ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 0
<
,0
-1
.2
/3"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
ฤnon_trainable_variables
ลlayers
ฦmetrics
 วlayer_regularization_losses
ศlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
ฺ
ษtrace_0
สtrace_12
2__inference_batch_normalization_layer_call_fn_3070
2__inference_batch_normalization_layer_call_fn_3079ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 zษtrace_0zสtrace_1

หtrace_0
ฬtrace_12ี
M__inference_batch_normalization_layer_call_and_return_conditional_losses_3097
M__inference_batch_normalization_layer_call_and_return_conditional_losses_3115ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 zหtrace_0zฬtrace_1
 "
trackable_list_wrapper
':%2batch_normalization/gamma
&:$2batch_normalization/beta
/:- (2batch_normalization/moving_mean
3:1 (2#batch_normalization/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
อnon_trainable_variables
ฮlayers
ฯmetrics
 ะlayer_regularization_losses
ัlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
๏
าtrace_02ะ
)__inference_activation_layer_call_fn_3120ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zาtrace_0

ำtrace_02๋
D__inference_activation_layer_call_and_return_conditional_losses_3125ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zำtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
ิnon_trainable_variables
ีlayers
ึmetrics
 ืlayer_regularization_losses
ุlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
๒
ูtrace_02ำ
,__inference_max_pooling2d_layer_call_fn_3130ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zูtrace_0

ฺtrace_02๎
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_3135ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zฺtrace_0
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
฿layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
ํ
เtrace_02ฮ
'__inference_conv2d_1_layer_call_fn_3142ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zเtrace_0

แtrace_02้
B__inference_conv2d_1_layer_call_and_return_conditional_losses_3152ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zแtrace_0
):' 2conv2d_1/kernel
: 2conv2d_1/bias
ด2ฑฎ
ฃฒ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 0
<
L0
M1
N2
O3"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
โnon_trainable_variables
ใlayers
ไmetrics
 ๅlayer_regularization_losses
ๆlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
?
็trace_0
่trace_12ฃ
4__inference_batch_normalization_1_layer_call_fn_3161
4__inference_batch_normalization_1_layer_call_fn_3170ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 z็trace_0z่trace_1

้trace_0
๊trace_12ู
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3188
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3206ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 z้trace_0z๊trace_1
 "
trackable_list_wrapper
):' 2batch_normalization_1/gamma
(:& 2batch_normalization_1/beta
1:/  (2!batch_normalization_1/moving_mean
5:3  (2%batch_normalization_1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
๋non_trainable_variables
์layers
ํmetrics
 ๎layer_regularization_losses
๏layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
๑
๐trace_02า
+__inference_activation_1_layer_call_fn_3211ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 z๐trace_0

๑trace_02ํ
F__inference_activation_1_layer_call_and_return_conditional_losses_3216ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 z๑trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
๒non_trainable_variables
๓layers
๔metrics
 ๕layer_regularization_losses
๖layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
๔
๗trace_02ี
.__inference_max_pooling2d_1_layer_call_fn_3221ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 z๗trace_0

๘trace_02๐
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_3226ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 z๘trace_0
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
๙non_trainable_variables
๚layers
๛metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
ํ
?trace_02ฮ
'__inference_conv2d_2_layer_call_fn_3233ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 z?trace_0

?trace_02้
B__inference_conv2d_2_layer_call_and_return_conditional_losses_3243ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 z?trace_0
):' @2conv2d_2/kernel
:@2conv2d_2/bias
ด2ฑฎ
ฃฒ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 0
<
l0
m1
n2
o3"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
?
trace_0
trace_12ฃ
4__inference_batch_normalization_2_layer_call_fn_3252
4__inference_batch_normalization_2_layer_call_fn_3261ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 ztrace_0ztrace_1

trace_0
trace_12ู
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3279
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3297ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
):'@2batch_normalization_2/gamma
(:&@2batch_normalization_2/beta
1:/@ (2!batch_normalization_2/moving_mean
5:3@ (2%batch_normalization_2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
๑
trace_02า
+__inference_activation_2_layer_call_fn_3302ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 ztrace_0

trace_02ํ
F__inference_activation_2_layer_call_and_return_conditional_losses_3307ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
๔
trace_02ี
.__inference_max_pooling2d_2_layer_call_fn_3312ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 ztrace_0

trace_02๐
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3317ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 ztrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
ต
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
|	variables
}trainable_variables
~regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ํ
trace_02ฮ
'__inference_conv2d_3_layer_call_fn_3324ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 ztrace_0

trace_02้
B__inference_conv2d_3_layer_call_and_return_conditional_losses_3334ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 ztrace_0
*:(@2conv2d_3/kernel
:2conv2d_3/bias
ด2ฑฎ
ฃฒ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 0
@
0
1
2
3"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
non_trainable_variables
layers
?metrics
 กlayer_regularization_losses
ขlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
?
ฃtrace_0
คtrace_12ฃ
4__inference_batch_normalization_3_layer_call_fn_3343
4__inference_batch_normalization_3_layer_call_fn_3352ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 zฃtrace_0zคtrace_1

ฅtrace_0
ฆtrace_12ู
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3370
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3388ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 zฅtrace_0zฆtrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_3/gamma
):'2batch_normalization_3/beta
2:0 (2!batch_normalization_3/moving_mean
6:4 (2%batch_normalization_3/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
งnon_trainable_variables
จlayers
ฉmetrics
 ชlayer_regularization_losses
ซlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
๑
ฌtrace_02า
+__inference_activation_3_layer_call_fn_3393ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zฌtrace_0

ญtrace_02ํ
F__inference_activation_3_layer_call_and_return_conditional_losses_3398ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zญtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
ฎnon_trainable_variables
ฏlayers
ฐmetrics
 ฑlayer_regularization_losses
ฒlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
๔
ณtrace_02ี
.__inference_max_pooling2d_3_layer_call_fn_3403ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zณtrace_0

ดtrace_02๐
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3408ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zดtrace_0
0
ข0
ฃ1"
trackable_list_wrapper
0
ข0
ฃ1"
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
ตnon_trainable_variables
ถlayers
ทmetrics
 ธlayer_regularization_losses
นlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+ก&call_and_return_all_conditional_losses
'ก"call_and_return_conditional_losses"
_generic_user_object
ํ
บtrace_02ฮ
'__inference_conv2d_4_layer_call_fn_3415ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zบtrace_0

ปtrace_02้
B__inference_conv2d_4_layer_call_and_return_conditional_losses_3426ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zปtrace_0
*:(2conv2d_4/kernel
:2conv2d_4/bias
ด2ฑฎ
ฃฒ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
ผnon_trainable_variables
ฝlayers
พmetrics
 ฟlayer_regularization_losses
ภlayer_metrics
ฅ	variables
ฆtrainable_variables
งregularization_losses
ฉ__call__
+ช&call_and_return_all_conditional_losses
'ช"call_and_return_conditional_losses"
_generic_user_object
์
มtrace_02อ
&__inference_reshape_layer_call_fn_3431ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zมtrace_0

ยtrace_02่
A__inference_reshape_layer_call_and_return_conditional_losses_3444ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zยtrace_0
Z
.0
/1
N2
O3
n4
o5
6
7"
trackable_list_wrapper
ฆ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
8
ร0
ฤ1
ล2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B?
)__inference_sequential_layer_call_fn_2246conv2d_input"ภ
ทฒณ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
๛B๘
)__inference_sequential_layer_call_fn_2797inputs"ภ
ทฒณ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
๛B๘
)__inference_sequential_layer_call_fn_2828inputs"ภ
ทฒณ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B?
)__inference_sequential_layer_call_fn_2637conv2d_input"ภ
ทฒณ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_2936inputs"ภ
ทฒณ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_3044inputs"ภ
ทฒณ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_2685conv2d_input"ภ
ทฒณ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_2733conv2d_input"ภ
ทฒณ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
:	 (2training/SGD/iter
: (2training/SGD/decay
$:" (2training/SGD/learning_rate
: (2training/SGD/momentum
ฮBห
"__inference_signature_wrapper_2766conv2d_input"
ฒ
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ูBึ
%__inference_conv2d_layer_call_fn_3051inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๔B๑
@__inference_conv2d_layer_call_and_return_conditional_losses_3061inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
๘B๕
2__inference_batch_normalization_layer_call_fn_3070inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
๘B๕
2__inference_batch_normalization_layer_call_fn_3079inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B
M__inference_batch_normalization_layer_call_and_return_conditional_losses_3097inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B
M__inference_batch_normalization_layer_call_and_return_conditional_losses_3115inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?Bฺ
)__inference_activation_layer_call_fn_3120inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๘B๕
D__inference_activation_layer_call_and_return_conditional_losses_3125inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
เB?
,__inference_max_pooling2d_layer_call_fn_3130inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๛B๘
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_3135inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?Bุ
'__inference_conv2d_1_layer_call_fn_3142inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๖B๓
B__inference_conv2d_1_layer_call_and_return_conditional_losses_3152inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
๚B๗
4__inference_batch_normalization_1_layer_call_fn_3161inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
๚B๗
4__inference_batch_normalization_1_layer_call_fn_3170inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3188inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3206inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
฿B?
+__inference_activation_1_layer_call_fn_3211inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๚B๗
F__inference_activation_1_layer_call_and_return_conditional_losses_3216inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
โB฿
.__inference_max_pooling2d_1_layer_call_fn_3221inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
?B๚
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_3226inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?Bุ
'__inference_conv2d_2_layer_call_fn_3233inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๖B๓
B__inference_conv2d_2_layer_call_and_return_conditional_losses_3243inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
๚B๗
4__inference_batch_normalization_2_layer_call_fn_3252inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
๚B๗
4__inference_batch_normalization_2_layer_call_fn_3261inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3279inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3297inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
฿B?
+__inference_activation_2_layer_call_fn_3302inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๚B๗
F__inference_activation_2_layer_call_and_return_conditional_losses_3307inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
โB฿
.__inference_max_pooling2d_2_layer_call_fn_3312inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
?B๚
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3317inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?Bุ
'__inference_conv2d_3_layer_call_fn_3324inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๖B๓
B__inference_conv2d_3_layer_call_and_return_conditional_losses_3334inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
๚B๗
4__inference_batch_normalization_3_layer_call_fn_3343inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
๚B๗
4__inference_batch_normalization_3_layer_call_fn_3352inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3370inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
B
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3388inputs"ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
฿B?
+__inference_activation_3_layer_call_fn_3393inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๚B๗
F__inference_activation_3_layer_call_and_return_conditional_losses_3398inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
โB฿
.__inference_max_pooling2d_3_layer_call_fn_3403inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
?B๚
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3408inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?Bุ
'__inference_conv2d_4_layer_call_fn_3415inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๖B๓
B__inference_conv2d_4_layer_call_and_return_conditional_losses_3426inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ฺBื
&__inference_reshape_layer_call_fn_3431inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๕B๒
A__inference_reshape_layer_call_and_return_conditional_losses_3444inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
c
ฦ	variables
ว	keras_api

ศtotal

ษcount
ส
_fn_kwargs"
_tf_keras_metric
v
ห	variables
ฬ	keras_api
อ
thresholds
ฮtrue_positives
ฯfalse_positives"
_tf_keras_metric
v
ะ	variables
ั	keras_api
า
thresholds
ำtrue_positives
ิfalse_negatives"
_tf_keras_metric
0
ศ0
ษ1"
trackable_list_wrapper
.
ฦ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ฮ0
ฯ1"
trackable_list_wrapper
.
ห	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
ำ0
ิ1"
trackable_list_wrapper
.
ะ	variables"
_generic_user_object
 "
trackable_list_wrapper
 : (2true_positives_1
: (2false_negativesม
__inference__wrapped_model_1635""#,-./BCLMNObclmnoขฃ?ข<
5ข2
0-
conv2d_input?????????
ช "6ช3
1
reshape&#
reshape?????????ถ
F__inference_activation_1_layer_call_and_return_conditional_losses_3216l9ข6
/ข,
*'
inputs????????? 
ช "/ข,
%"
0????????? 
 
+__inference_activation_1_layer_call_fn_3211_9ข6
/ข,
*'
inputs????????? 
ช ""????????? ฒ
F__inference_activation_2_layer_call_and_return_conditional_losses_3307h7ข4
-ข*
(%
inputs?????????@@@
ช "-ข*
# 
0?????????@@@
 
+__inference_activation_2_layer_call_fn_3302[7ข4
-ข*
(%
inputs?????????@@@
ช " ?????????@@@ด
F__inference_activation_3_layer_call_and_return_conditional_losses_3398j8ข5
.ข+
)&
inputs?????????  
ช ".ข+
$!
0?????????  
 
+__inference_activation_3_layer_call_fn_3393]8ข5
.ข+
)&
inputs?????????  
ช "!?????????  ด
D__inference_activation_layer_call_and_return_conditional_losses_3125l9ข6
/ข,
*'
inputs?????????
ช "/ข,
%"
0?????????
 
)__inference_activation_layer_call_fn_3120_9ข6
/ข,
*'
inputs?????????
ช ""?????????๊
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3188LMNOMขJ
Cข@
:7
inputs+??????????????????????????? 
p 
ช "?ข<
52
0+??????????????????????????? 
 ๊
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3206LMNOMขJ
Cข@
:7
inputs+??????????????????????????? 
p
ช "?ข<
52
0+??????????????????????????? 
 ย
4__inference_batch_normalization_1_layer_call_fn_3161LMNOMขJ
Cข@
:7
inputs+??????????????????????????? 
p 
ช "2/+??????????????????????????? ย
4__inference_batch_normalization_1_layer_call_fn_3170LMNOMขJ
Cข@
:7
inputs+??????????????????????????? 
p
ช "2/+??????????????????????????? ๊
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3279lmnoMขJ
Cข@
:7
inputs+???????????????????????????@
p 
ช "?ข<
52
0+???????????????????????????@
 ๊
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3297lmnoMขJ
Cข@
:7
inputs+???????????????????????????@
p
ช "?ข<
52
0+???????????????????????????@
 ย
4__inference_batch_normalization_2_layer_call_fn_3252lmnoMขJ
Cข@
:7
inputs+???????????????????????????@
p 
ช "2/+???????????????????????????@ย
4__inference_batch_normalization_2_layer_call_fn_3261lmnoMขJ
Cข@
:7
inputs+???????????????????????????@
p
ช "2/+???????????????????????????@๐
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3370NขK
DขA
;8
inputs,???????????????????????????
p 
ช "@ข=
63
0,???????????????????????????
 ๐
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3388NขK
DขA
;8
inputs,???????????????????????????
p
ช "@ข=
63
0,???????????????????????????
 ศ
4__inference_batch_normalization_3_layer_call_fn_3343NขK
DขA
;8
inputs,???????????????????????????
p 
ช "30,???????????????????????????ศ
4__inference_batch_normalization_3_layer_call_fn_3352NขK
DขA
;8
inputs,???????????????????????????
p
ช "30,???????????????????????????่
M__inference_batch_normalization_layer_call_and_return_conditional_losses_3097,-./MขJ
Cข@
:7
inputs+???????????????????????????
p 
ช "?ข<
52
0+???????????????????????????
 ่
M__inference_batch_normalization_layer_call_and_return_conditional_losses_3115,-./MขJ
Cข@
:7
inputs+???????????????????????????
p
ช "?ข<
52
0+???????????????????????????
 ภ
2__inference_batch_normalization_layer_call_fn_3070,-./MขJ
Cข@
:7
inputs+???????????????????????????
p 
ช "2/+???????????????????????????ภ
2__inference_batch_normalization_layer_call_fn_3079,-./MขJ
Cข@
:7
inputs+???????????????????????????
p
ช "2/+???????????????????????????ถ
B__inference_conv2d_1_layer_call_and_return_conditional_losses_3152pBC9ข6
/ข,
*'
inputs?????????
ช "/ข,
%"
0????????? 
 
'__inference_conv2d_1_layer_call_fn_3142cBC9ข6
/ข,
*'
inputs?????????
ช ""????????? ฒ
B__inference_conv2d_2_layer_call_and_return_conditional_losses_3243lbc7ข4
-ข*
(%
inputs?????????@@ 
ช "-ข*
# 
0?????????@@@
 
'__inference_conv2d_2_layer_call_fn_3233_bc7ข4
-ข*
(%
inputs?????????@@ 
ช " ?????????@@@ต
B__inference_conv2d_3_layer_call_and_return_conditional_losses_3334o7ข4
-ข*
(%
inputs?????????  @
ช ".ข+
$!
0?????????  
 
'__inference_conv2d_3_layer_call_fn_3324b7ข4
-ข*
(%
inputs?????????  @
ช "!?????????  ต
B__inference_conv2d_4_layer_call_and_return_conditional_losses_3426oขฃ8ข5
.ข+
)&
inputs?????????
ช "-ข*
# 
0?????????
 
'__inference_conv2d_4_layer_call_fn_3415bขฃ8ข5
.ข+
)&
inputs?????????
ช " ?????????ด
@__inference_conv2d_layer_call_and_return_conditional_losses_3061p"#9ข6
/ข,
*'
inputs?????????
ช "/ข,
%"
0?????????
 
%__inference_conv2d_layer_call_fn_3051c"#9ข6
/ข,
*'
inputs?????????
ช ""?????????์
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_3226RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ฤ
.__inference_max_pooling2d_1_layer_call_fn_3221RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????์
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3317RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ฤ
.__inference_max_pooling2d_2_layer_call_fn_3312RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????์
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3408RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ฤ
.__inference_max_pooling2d_3_layer_call_fn_3403RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????๊
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_3135RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ย
,__inference_max_pooling2d_layer_call_fn_3130RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????ช
A__inference_reshape_layer_call_and_return_conditional_losses_3444e7ข4
-ข*
(%
inputs?????????
ช "*ข'
 
0?????????
 
&__inference_reshape_layer_call_fn_3431X7ข4
-ข*
(%
inputs?????????
ช "?????????โ
D__inference_sequential_layer_call_and_return_conditional_losses_2685""#,-./BCLMNObclmnoขฃGขD
=ข:
0-
conv2d_input?????????
p 

 
ช "*ข'
 
0?????????
 โ
D__inference_sequential_layer_call_and_return_conditional_losses_2733""#,-./BCLMNObclmnoขฃGขD
=ข:
0-
conv2d_input?????????
p

 
ช "*ข'
 
0?????????
 ?
D__inference_sequential_layer_call_and_return_conditional_losses_2936""#,-./BCLMNObclmnoขฃAข>
7ข4
*'
inputs?????????
p 

 
ช "*ข'
 
0?????????
 ?
D__inference_sequential_layer_call_and_return_conditional_losses_3044""#,-./BCLMNObclmnoขฃAข>
7ข4
*'
inputs?????????
p

 
ช "*ข'
 
0?????????
 บ
)__inference_sequential_layer_call_fn_2246""#,-./BCLMNObclmnoขฃGขD
=ข:
0-
conv2d_input?????????
p 

 
ช "?????????บ
)__inference_sequential_layer_call_fn_2637""#,-./BCLMNObclmnoขฃGขD
=ข:
0-
conv2d_input?????????
p

 
ช "?????????ด
)__inference_sequential_layer_call_fn_2797""#,-./BCLMNObclmnoขฃAข>
7ข4
*'
inputs?????????
p 

 
ช "?????????ด
)__inference_sequential_layer_call_fn_2828""#,-./BCLMNObclmnoขฃAข>
7ข4
*'
inputs?????????
p

 
ช "?????????ิ
"__inference_signature_wrapper_2766ญ""#,-./BCLMNObclmnoขฃOขL
ข 
EชB
@
conv2d_input0-
conv2d_input?????????"6ช3
1
reshape&#
reshape?????????