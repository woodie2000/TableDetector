іѕ4
≤И
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
ј
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
.
Identity

input"T
output"T"	
Ttype
В
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
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
Щ
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-0-ga4dfb8d1a718с•'
М
block6_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock6_conv1/kernel
Е
'block6_conv1/kernel/Read/ReadVariableOpReadVariableOpblock6_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block6_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock6_conv1/bias
t
%block6_conv1/bias/Read/ReadVariableOpReadVariableOpblock6_conv1/bias*
_output_shapes	
:А*
dtype0
М
block6_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock6_conv2/kernel
Е
'block6_conv2/kernel/Read/ReadVariableOpReadVariableOpblock6_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block6_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock6_conv2/bias
t
%block6_conv2/bias/Read/ReadVariableOpReadVariableOpblock6_conv2/bias*
_output_shapes	
:А*
dtype0
Ъ
block7_conv1_column/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameblock7_conv1_column/kernel
У
.block7_conv1_column/kernel/Read/ReadVariableOpReadVariableOpblock7_conv1_column/kernel*(
_output_shapes
:АА*
dtype0
Й
block7_conv1_column/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameblock7_conv1_column/bias
В
,block7_conv1_column/bias/Read/ReadVariableOpReadVariableOpblock7_conv1_column/bias*
_output_shapes	
:А*
dtype0
К
conv7_table/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*#
shared_nameconv7_table/kernel
Г
&conv7_table/kernel/Read/ReadVariableOpReadVariableOpconv7_table/kernel*(
_output_shapes
:АА*
dtype0
y
conv7_table/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
shared_nameconv7_table/bias
r
$conv7_table/bias/Read/ReadVariableOpReadVariableOpconv7_table/bias*
_output_shapes	
:А*
dtype0
Ъ
block8_conv1_column/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameblock8_conv1_column/kernel
У
.block8_conv1_column/kernel/Read/ReadVariableOpReadVariableOpblock8_conv1_column/kernel*(
_output_shapes
:АА*
dtype0
Й
block8_conv1_column/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameblock8_conv1_column/bias
В
,block8_conv1_column/bias/Read/ReadVariableOpReadVariableOpblock8_conv1_column/bias*
_output_shapes	
:А*
dtype0
Л
table_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*$
shared_nametable_output/kernel
Д
'table_output/kernel/Read/ReadVariableOpReadVariableOptable_output/kernel*'
_output_shapes
:А
*
dtype0
z
table_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nametable_output/bias
s
%table_output/bias/Read/ReadVariableOpReadVariableOptable_output/bias*
_output_shapes
:*
dtype0
Н
column_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*%
shared_namecolumn_output/kernel
Ж
(column_output/kernel/Read/ReadVariableOpReadVariableOpcolumn_output/kernel*'
_output_shapes
:А
*
dtype0
|
column_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namecolumn_output/bias
u
&column_output/bias/Read/ReadVariableOpReadVariableOpcolumn_output/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
К
block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
Г
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
К
block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
Г
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
Л
block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*$
shared_nameblock2_conv1/kernel
Д
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@А*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:А*
dtype0
М
block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock2_conv2/kernel
Е
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:А*
dtype0
М
block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv1/kernel
Е
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:А*
dtype0
М
block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv2/kernel
Е
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:А*
dtype0
М
block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv3/kernel
Е
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:А*
dtype0
М
block3_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv4/kernel
Е
'block3_conv4/kernel/Read/ReadVariableOpReadVariableOpblock3_conv4/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv4/bias
t
%block3_conv4/bias/Read/ReadVariableOpReadVariableOpblock3_conv4/bias*
_output_shapes	
:А*
dtype0
М
block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv1/kernel
Е
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:А*
dtype0
М
block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv2/kernel
Е
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:А*
dtype0
М
block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv3/kernel
Е
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:А*
dtype0
М
block4_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv4/kernel
Е
'block4_conv4/kernel/Read/ReadVariableOpReadVariableOpblock4_conv4/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv4/bias
t
%block4_conv4/bias/Read/ReadVariableOpReadVariableOpblock4_conv4/bias*
_output_shapes	
:А*
dtype0
М
block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv1/kernel
Е
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:А*
dtype0
М
block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv2/kernel
Е
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:А*
dtype0
М
block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv3/kernel
Е
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:А*
dtype0
М
block5_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv4/kernel
Е
'block5_conv4/kernel/Read/ReadVariableOpReadVariableOpblock5_conv4/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv4/bias
t
%block5_conv4/bias/Read/ReadVariableOpReadVariableOpblock5_conv4/bias*
_output_shapes	
:А*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
Ъ
Adam/block6_conv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameAdam/block6_conv1/kernel/m
У
.Adam/block6_conv1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/block6_conv1/kernel/m*(
_output_shapes
:АА*
dtype0
Й
Adam/block6_conv1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/block6_conv1/bias/m
В
,Adam/block6_conv1/bias/m/Read/ReadVariableOpReadVariableOpAdam/block6_conv1/bias/m*
_output_shapes	
:А*
dtype0
Ъ
Adam/block6_conv2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameAdam/block6_conv2/kernel/m
У
.Adam/block6_conv2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/block6_conv2/kernel/m*(
_output_shapes
:АА*
dtype0
Й
Adam/block6_conv2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/block6_conv2/bias/m
В
,Adam/block6_conv2/bias/m/Read/ReadVariableOpReadVariableOpAdam/block6_conv2/bias/m*
_output_shapes	
:А*
dtype0
®
!Adam/block7_conv1_column/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/block7_conv1_column/kernel/m
°
5Adam/block7_conv1_column/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/block7_conv1_column/kernel/m*(
_output_shapes
:АА*
dtype0
Ч
Adam/block7_conv1_column/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/block7_conv1_column/bias/m
Р
3Adam/block7_conv1_column/bias/m/Read/ReadVariableOpReadVariableOpAdam/block7_conv1_column/bias/m*
_output_shapes	
:А*
dtype0
Ш
Adam/conv7_table/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameAdam/conv7_table/kernel/m
С
-Adam/conv7_table/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv7_table/kernel/m*(
_output_shapes
:АА*
dtype0
З
Adam/conv7_table/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdam/conv7_table/bias/m
А
+Adam/conv7_table/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv7_table/bias/m*
_output_shapes	
:А*
dtype0
®
!Adam/block8_conv1_column/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/block8_conv1_column/kernel/m
°
5Adam/block8_conv1_column/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/block8_conv1_column/kernel/m*(
_output_shapes
:АА*
dtype0
Ч
Adam/block8_conv1_column/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/block8_conv1_column/bias/m
Р
3Adam/block8_conv1_column/bias/m/Read/ReadVariableOpReadVariableOpAdam/block8_conv1_column/bias/m*
_output_shapes	
:А*
dtype0
Щ
Adam/table_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*+
shared_nameAdam/table_output/kernel/m
Т
.Adam/table_output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/table_output/kernel/m*'
_output_shapes
:А
*
dtype0
И
Adam/table_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/table_output/bias/m
Б
,Adam/table_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/table_output/bias/m*
_output_shapes
:*
dtype0
Ы
Adam/column_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*,
shared_nameAdam/column_output/kernel/m
Ф
/Adam/column_output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/column_output/kernel/m*'
_output_shapes
:А
*
dtype0
К
Adam/column_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/column_output/bias/m
Г
-Adam/column_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/column_output/bias/m*
_output_shapes
:*
dtype0
Ъ
Adam/block6_conv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameAdam/block6_conv1/kernel/v
У
.Adam/block6_conv1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/block6_conv1/kernel/v*(
_output_shapes
:АА*
dtype0
Й
Adam/block6_conv1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/block6_conv1/bias/v
В
,Adam/block6_conv1/bias/v/Read/ReadVariableOpReadVariableOpAdam/block6_conv1/bias/v*
_output_shapes	
:А*
dtype0
Ъ
Adam/block6_conv2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameAdam/block6_conv2/kernel/v
У
.Adam/block6_conv2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/block6_conv2/kernel/v*(
_output_shapes
:АА*
dtype0
Й
Adam/block6_conv2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/block6_conv2/bias/v
В
,Adam/block6_conv2/bias/v/Read/ReadVariableOpReadVariableOpAdam/block6_conv2/bias/v*
_output_shapes	
:А*
dtype0
®
!Adam/block7_conv1_column/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/block7_conv1_column/kernel/v
°
5Adam/block7_conv1_column/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/block7_conv1_column/kernel/v*(
_output_shapes
:АА*
dtype0
Ч
Adam/block7_conv1_column/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/block7_conv1_column/bias/v
Р
3Adam/block7_conv1_column/bias/v/Read/ReadVariableOpReadVariableOpAdam/block7_conv1_column/bias/v*
_output_shapes	
:А*
dtype0
Ш
Adam/conv7_table/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameAdam/conv7_table/kernel/v
С
-Adam/conv7_table/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv7_table/kernel/v*(
_output_shapes
:АА*
dtype0
З
Adam/conv7_table/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdam/conv7_table/bias/v
А
+Adam/conv7_table/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv7_table/bias/v*
_output_shapes	
:А*
dtype0
®
!Adam/block8_conv1_column/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/block8_conv1_column/kernel/v
°
5Adam/block8_conv1_column/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/block8_conv1_column/kernel/v*(
_output_shapes
:АА*
dtype0
Ч
Adam/block8_conv1_column/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/block8_conv1_column/bias/v
Р
3Adam/block8_conv1_column/bias/v/Read/ReadVariableOpReadVariableOpAdam/block8_conv1_column/bias/v*
_output_shapes	
:А*
dtype0
Щ
Adam/table_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*+
shared_nameAdam/table_output/kernel/v
Т
.Adam/table_output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/table_output/kernel/v*'
_output_shapes
:А
*
dtype0
И
Adam/table_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/table_output/bias/v
Б
,Adam/table_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/table_output/bias/v*
_output_shapes
:*
dtype0
Ы
Adam/column_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*,
shared_nameAdam/column_output/kernel/v
Ф
/Adam/column_output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/column_output/kernel/v*'
_output_shapes
:А
*
dtype0
К
Adam/column_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/column_output/bias/v
Г
-Adam/column_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/column_output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Е”
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*њ“
valueі“B∞“ B®“
С
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
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
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer_with_weights-6
layer-22
layer_with_weights-7
layer-23
	optimizer
loss
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
Ґ
 layer-0
!layer_with_weights-0
!layer-1
"layer_with_weights-1
"layer-2
#layer-3
$layer_with_weights-2
$layer-4
%layer_with_weights-3
%layer-5
&layer-6
'layer_with_weights-4
'layer-7
(layer_with_weights-5
(layer-8
)layer_with_weights-6
)layer-9
*layer_with_weights-7
*layer-10
+layer-11
,layer_with_weights-8
,layer-12
-layer_with_weights-9
-layer-13
.layer_with_weights-10
.layer-14
/layer_with_weights-11
/layer-15
0layer-16
1layer_with_weights-12
1layer-17
2layer_with_weights-13
2layer-18
3layer_with_weights-14
3layer-19
4layer_with_weights-15
4layer-20
5layer-21
6regularization_losses
7trainable_variables
8	variables
9	keras_api
h

:kernel
;bias
<regularization_losses
=trainable_variables
>	variables
?	keras_api
R
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
h

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
R
Jregularization_losses
Ktrainable_variables
L	variables
M	keras_api
h

Nkernel
Obias
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
R
Tregularization_losses
Utrainable_variables
V	variables
W	keras_api
h

Xkernel
Ybias
Zregularization_losses
[trainable_variables
\	variables
]	keras_api
h

^kernel
_bias
`regularization_losses
atrainable_variables
b	variables
c	keras_api
R
dregularization_losses
etrainable_variables
f	variables
g	keras_api
R
hregularization_losses
itrainable_variables
j	variables
k	keras_api
R
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
R
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
R
tregularization_losses
utrainable_variables
v	variables
w	keras_api
R
xregularization_losses
ytrainable_variables
z	variables
{	keras_api
R
|regularization_losses
}trainable_variables
~	variables
	keras_api
V
Аregularization_losses
Бtrainable_variables
В	variables
Г	keras_api
V
Дregularization_losses
Еtrainable_variables
Ж	variables
З	keras_api
V
Иregularization_losses
Йtrainable_variables
К	variables
Л	keras_api
V
Мregularization_losses
Нtrainable_variables
О	variables
П	keras_api
V
Рregularization_losses
Сtrainable_variables
Т	variables
У	keras_api
n
Фkernel
	Хbias
Цregularization_losses
Чtrainable_variables
Ш	variables
Щ	keras_api
n
Ъkernel
	Ыbias
Ьregularization_losses
Эtrainable_variables
Ю	variables
Я	keras_api
е
	†iter
°beta_1
Ґbeta_2

£decay
§learning_rate:mЦ;mЧDmШEmЩNmЪOmЫXmЬYmЭ^mЮ_mЯ	Фm†	Хm°	ЪmҐ	Ыm£:v§;v•Dv¶EvІNv®Ov©Xv™YvЂ^vђ_v≠	ФvЃ	Хvѓ	Ъv∞	Ыv±
 
 
j
:0
;1
D2
E3
N4
O5
X6
Y7
^8
_9
Ф10
Х11
Ъ12
Ы13
К
•0
¶1
І2
®3
©4
™5
Ђ6
ђ7
≠8
Ѓ9
ѓ10
∞11
±12
≤13
≥14
і15
µ16
ґ17
Ј18
Є19
є20
Ї21
ї22
Љ23
љ24
Њ25
њ26
ј27
Ѕ28
¬29
√30
ƒ31
:32
;33
D34
E35
N36
O37
X38
Y39
^40
_41
Ф42
Х43
Ъ44
Ы45
≤
regularization_losses
≈non_trainable_variables
trainable_variables
∆metrics
 «layer_regularization_losses
»layer_metrics
…layers
	variables
 

 _init_input_shape
n
•kernel
	¶bias
Ћregularization_losses
ћtrainable_variables
Ќ	variables
ќ	keras_api
n
Іkernel
	®bias
ѕregularization_losses
–trainable_variables
—	variables
“	keras_api
V
”regularization_losses
‘trainable_variables
’	variables
÷	keras_api
n
©kernel
	™bias
„regularization_losses
Ўtrainable_variables
ў	variables
Џ	keras_api
n
Ђkernel
	ђbias
џregularization_losses
№trainable_variables
Ё	variables
ё	keras_api
V
яregularization_losses
аtrainable_variables
б	variables
в	keras_api
n
≠kernel
	Ѓbias
гregularization_losses
дtrainable_variables
е	variables
ж	keras_api
n
ѓkernel
	∞bias
зregularization_losses
иtrainable_variables
й	variables
к	keras_api
n
±kernel
	≤bias
лregularization_losses
мtrainable_variables
н	variables
о	keras_api
n
≥kernel
	іbias
пregularization_losses
рtrainable_variables
с	variables
т	keras_api
V
уregularization_losses
фtrainable_variables
х	variables
ц	keras_api
n
µkernel
	ґbias
чregularization_losses
шtrainable_variables
щ	variables
ъ	keras_api
n
Јkernel
	Єbias
ыregularization_losses
ьtrainable_variables
э	variables
ю	keras_api
n
єkernel
	Їbias
€regularization_losses
Аtrainable_variables
Б	variables
В	keras_api
n
їkernel
	Љbias
Гregularization_losses
Дtrainable_variables
Е	variables
Ж	keras_api
V
Зregularization_losses
Иtrainable_variables
Й	variables
К	keras_api
n
љkernel
	Њbias
Лregularization_losses
Мtrainable_variables
Н	variables
О	keras_api
n
њkernel
	јbias
Пregularization_losses
Рtrainable_variables
С	variables
Т	keras_api
n
Ѕkernel
	¬bias
Уregularization_losses
Фtrainable_variables
Х	variables
Ц	keras_api
n
√kernel
	ƒbias
Чregularization_losses
Шtrainable_variables
Щ	variables
Ъ	keras_api
V
Ыregularization_losses
Ьtrainable_variables
Э	variables
Ю	keras_api
 
 
Ц
•0
¶1
І2
®3
©4
™5
Ђ6
ђ7
≠8
Ѓ9
ѓ10
∞11
±12
≤13
≥14
і15
µ16
ґ17
Ј18
Є19
є20
Ї21
ї22
Љ23
љ24
Њ25
њ26
ј27
Ѕ28
¬29
√30
ƒ31
≤
6regularization_losses
Яnon_trainable_variables
7trainable_variables
†metrics
 °layer_regularization_losses
Ґlayer_metrics
£layers
8	variables
_]
VARIABLE_VALUEblock6_conv1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock6_conv1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1

:0
;1
≤
<regularization_losses
§non_trainable_variables
=trainable_variables
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
®layers
>	variables
 
 
 
≤
@regularization_losses
©non_trainable_variables
Atrainable_variables
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
≠layers
B	variables
_]
VARIABLE_VALUEblock6_conv2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock6_conv2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1

D0
E1
≤
Fregularization_losses
Ѓnon_trainable_variables
Gtrainable_variables
ѓmetrics
 ∞layer_regularization_losses
±layer_metrics
≤layers
H	variables
 
 
 
≤
Jregularization_losses
≥non_trainable_variables
Ktrainable_variables
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
Јlayers
L	variables
fd
VARIABLE_VALUEblock7_conv1_column/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEblock7_conv1_column/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

N0
O1
≤
Pregularization_losses
Єnon_trainable_variables
Qtrainable_variables
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
Љlayers
R	variables
 
 
 
≤
Tregularization_losses
љnon_trainable_variables
Utrainable_variables
Њmetrics
 њlayer_regularization_losses
јlayer_metrics
Ѕlayers
V	variables
^\
VARIABLE_VALUEconv7_table/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv7_table/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

X0
Y1

X0
Y1
≤
Zregularization_losses
¬non_trainable_variables
[trainable_variables
√metrics
 ƒlayer_regularization_losses
≈layer_metrics
∆layers
\	variables
fd
VARIABLE_VALUEblock8_conv1_column/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEblock8_conv1_column/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

^0
_1

^0
_1
≤
`regularization_losses
«non_trainable_variables
atrainable_variables
»metrics
 …layer_regularization_losses
 layer_metrics
Ћlayers
b	variables
 
 
 
≤
dregularization_losses
ћnon_trainable_variables
etrainable_variables
Ќmetrics
 ќlayer_regularization_losses
ѕlayer_metrics
–layers
f	variables
 
 
 
≤
hregularization_losses
—non_trainable_variables
itrainable_variables
“metrics
 ”layer_regularization_losses
‘layer_metrics
’layers
j	variables
 
 
 
≤
lregularization_losses
÷non_trainable_variables
mtrainable_variables
„metrics
 Ўlayer_regularization_losses
ўlayer_metrics
Џlayers
n	variables
 
 
 
≤
pregularization_losses
џnon_trainable_variables
qtrainable_variables
№metrics
 Ёlayer_regularization_losses
ёlayer_metrics
яlayers
r	variables
 
 
 
≤
tregularization_losses
аnon_trainable_variables
utrainable_variables
бmetrics
 вlayer_regularization_losses
гlayer_metrics
дlayers
v	variables
 
 
 
≤
xregularization_losses
еnon_trainable_variables
ytrainable_variables
жmetrics
 зlayer_regularization_losses
иlayer_metrics
йlayers
z	variables
 
 
 
≤
|regularization_losses
кnon_trainable_variables
}trainable_variables
лmetrics
 мlayer_regularization_losses
нlayer_metrics
оlayers
~	variables
 
 
 
µ
Аregularization_losses
пnon_trainable_variables
Бtrainable_variables
рmetrics
 сlayer_regularization_losses
тlayer_metrics
уlayers
В	variables
 
 
 
µ
Дregularization_losses
фnon_trainable_variables
Еtrainable_variables
хmetrics
 цlayer_regularization_losses
чlayer_metrics
шlayers
Ж	variables
 
 
 
µ
Иregularization_losses
щnon_trainable_variables
Йtrainable_variables
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
эlayers
К	variables
 
 
 
µ
Мregularization_losses
юnon_trainable_variables
Нtrainable_variables
€metrics
 Аlayer_regularization_losses
Бlayer_metrics
Вlayers
О	variables
 
 
 
µ
Рregularization_losses
Гnon_trainable_variables
Сtrainable_variables
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
Зlayers
Т	variables
_]
VARIABLE_VALUEtable_output/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEtable_output/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Ф0
Х1

Ф0
Х1
µ
Цregularization_losses
Иnon_trainable_variables
Чtrainable_variables
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
Мlayers
Ш	variables
`^
VARIABLE_VALUEcolumn_output/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEcolumn_output/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Ъ0
Ы1

Ъ0
Ы1
µ
Ьregularization_losses
Нnon_trainable_variables
Эtrainable_variables
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
Сlayers
Ю	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock1_conv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock1_conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock1_conv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock1_conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock2_conv1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock2_conv1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock2_conv2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock2_conv2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock3_conv1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock3_conv1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv4/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv4/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv1/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv1/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv2/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv2/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv3/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv3/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv4/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv4/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv1/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv1/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv2/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv2/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv3/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv3/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv4/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv4/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE
Ц
•0
¶1
І2
®3
©4
™5
Ђ6
ђ7
≠8
Ѓ9
ѓ10
∞11
±12
≤13
≥14
і15
µ16
ґ17
Ј18
Є19
є20
Ї21
ї22
Љ23
љ24
Њ25
њ26
ј27
Ѕ28
¬29
√30
ƒ31
(
Т0
У1
Ф2
Х3
Ц4
 
 
ґ
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
17
18
19
20
21
22
23
 
 
 

•0
¶1
µ
Ћregularization_losses
Чnon_trainable_variables
ћtrainable_variables
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
Ыlayers
Ќ	variables
 
 

І0
®1
µ
ѕregularization_losses
Ьnon_trainable_variables
–trainable_variables
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
†layers
—	variables
 
 
 
µ
”regularization_losses
°non_trainable_variables
‘trainable_variables
Ґmetrics
 £layer_regularization_losses
§layer_metrics
•layers
’	variables
 
 

©0
™1
µ
„regularization_losses
¶non_trainable_variables
Ўtrainable_variables
Іmetrics
 ®layer_regularization_losses
©layer_metrics
™layers
ў	variables
 
 

Ђ0
ђ1
µ
џregularization_losses
Ђnon_trainable_variables
№trainable_variables
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
ѓlayers
Ё	variables
 
 
 
µ
яregularization_losses
∞non_trainable_variables
аtrainable_variables
±metrics
 ≤layer_regularization_losses
≥layer_metrics
іlayers
б	variables
 
 

≠0
Ѓ1
µ
гregularization_losses
µnon_trainable_variables
дtrainable_variables
ґmetrics
 Јlayer_regularization_losses
Єlayer_metrics
єlayers
е	variables
 
 

ѓ0
∞1
µ
зregularization_losses
Їnon_trainable_variables
иtrainable_variables
їmetrics
 Љlayer_regularization_losses
љlayer_metrics
Њlayers
й	variables
 
 

±0
≤1
µ
лregularization_losses
њnon_trainable_variables
мtrainable_variables
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
√layers
н	variables
 
 

≥0
і1
µ
пregularization_losses
ƒnon_trainable_variables
рtrainable_variables
≈metrics
 ∆layer_regularization_losses
«layer_metrics
»layers
с	variables
 
 
 
µ
уregularization_losses
…non_trainable_variables
фtrainable_variables
 metrics
 Ћlayer_regularization_losses
ћlayer_metrics
Ќlayers
х	variables
 
 

µ0
ґ1
µ
чregularization_losses
ќnon_trainable_variables
шtrainable_variables
ѕmetrics
 –layer_regularization_losses
—layer_metrics
“layers
щ	variables
 
 

Ј0
Є1
µ
ыregularization_losses
”non_trainable_variables
ьtrainable_variables
‘metrics
 ’layer_regularization_losses
÷layer_metrics
„layers
э	variables
 
 

є0
Ї1
µ
€regularization_losses
Ўnon_trainable_variables
Аtrainable_variables
ўmetrics
 Џlayer_regularization_losses
џlayer_metrics
№layers
Б	variables
 
 

ї0
Љ1
µ
Гregularization_losses
Ёnon_trainable_variables
Дtrainable_variables
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
бlayers
Е	variables
 
 
 
µ
Зregularization_losses
вnon_trainable_variables
Иtrainable_variables
гmetrics
 дlayer_regularization_losses
еlayer_metrics
жlayers
Й	variables
 
 

љ0
Њ1
µ
Лregularization_losses
зnon_trainable_variables
Мtrainable_variables
иmetrics
 йlayer_regularization_losses
кlayer_metrics
лlayers
Н	variables
 
 

њ0
ј1
µ
Пregularization_losses
мnon_trainable_variables
Рtrainable_variables
нmetrics
 оlayer_regularization_losses
пlayer_metrics
рlayers
С	variables
 
 

Ѕ0
¬1
µ
Уregularization_losses
сnon_trainable_variables
Фtrainable_variables
тmetrics
 уlayer_regularization_losses
фlayer_metrics
хlayers
Х	variables
 
 

√0
ƒ1
µ
Чregularization_losses
цnon_trainable_variables
Шtrainable_variables
чmetrics
 шlayer_regularization_losses
щlayer_metrics
ъlayers
Щ	variables
 
 
 
µ
Ыregularization_losses
ыnon_trainable_variables
Ьtrainable_variables
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
€layers
Э	variables
Ц
•0
¶1
І2
®3
©4
™5
Ђ6
ђ7
≠8
Ѓ9
ѓ10
∞11
±12
≤13
≥14
і15
µ16
ґ17
Ј18
Є19
є20
Ї21
ї22
Љ23
љ24
Њ25
њ26
ј27
Ѕ28
¬29
√30
ƒ31
 
 
 
¶
 0
!1
"2
#3
$4
%5
&6
'7
(8
)9
*10
+11
,12
-13
.14
/15
016
117
218
319
420
521
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Аtotal

Бcount
В	variables
Г	keras_api
8

Дtotal

Еcount
Ж	variables
З	keras_api
8

Иtotal

Йcount
К	variables
Л	keras_api
I

Мtotal

Нcount
О
_fn_kwargs
П	variables
Р	keras_api
I

Сtotal

Тcount
У
_fn_kwargs
Ф	variables
Х	keras_api

•0
¶1
 
 
 
 

І0
®1
 
 
 
 
 
 
 
 
 

©0
™1
 
 
 
 

Ђ0
ђ1
 
 
 
 
 
 
 
 
 

≠0
Ѓ1
 
 
 
 

ѓ0
∞1
 
 
 
 

±0
≤1
 
 
 
 

≥0
і1
 
 
 
 
 
 
 
 
 

µ0
ґ1
 
 
 
 

Ј0
Є1
 
 
 
 

є0
Ї1
 
 
 
 

ї0
Љ1
 
 
 
 
 
 
 
 
 

љ0
Њ1
 
 
 
 

њ0
ј1
 
 
 
 

Ѕ0
¬1
 
 
 
 

√0
ƒ1
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

А0
Б1

В	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

Д0
Е1

Ж	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

И0
Й1

К	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE
 

М0
Н1

П	variables
QO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE
 

С0
Т1

Ф	variables
ГА
VARIABLE_VALUEAdam/block6_conv1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/block6_conv1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEAdam/block6_conv2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/block6_conv2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE!Adam/block7_conv1_column/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/block7_conv1_column/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv7_table/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv7_table/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE!Adam/block8_conv1_column/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/block8_conv1_column/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEAdam/table_output/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/table_output/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUEAdam/column_output/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/column_output/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEAdam/block6_conv1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/block6_conv1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEAdam/block6_conv2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/block6_conv2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE!Adam/block7_conv1_column/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/block7_conv1_column/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv7_table/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv7_table/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE!Adam/block8_conv1_column/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/block8_conv1_column/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEAdam/table_output/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/table_output/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUEAdam/column_output/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/column_output/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
М
serving_default_inputPlaceholder*1
_output_shapes
:€€€€€€€€€АА*
dtype0*&
shape:€€€€€€€€€АА
к

StatefulPartitionedCallStatefulPartitionedCallserving_default_inputblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock3_conv4/kernelblock3_conv4/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock4_conv4/kernelblock4_conv4/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasblock5_conv4/kernelblock5_conv4/biasblock6_conv1/kernelblock6_conv1/biasblock6_conv2/kernelblock6_conv2/biasblock7_conv1_column/kernelblock7_conv1_column/biasblock8_conv1_column/kernelblock8_conv1_column/biasconv7_table/kernelconv7_table/biascolumn_output/kernelcolumn_output/biastable_output/kerneltable_output/bias*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::€€€€€€€€€АА:€€€€€€€€€АА*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_10043
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
е
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'block6_conv1/kernel/Read/ReadVariableOp%block6_conv1/bias/Read/ReadVariableOp'block6_conv2/kernel/Read/ReadVariableOp%block6_conv2/bias/Read/ReadVariableOp.block7_conv1_column/kernel/Read/ReadVariableOp,block7_conv1_column/bias/Read/ReadVariableOp&conv7_table/kernel/Read/ReadVariableOp$conv7_table/bias/Read/ReadVariableOp.block8_conv1_column/kernel/Read/ReadVariableOp,block8_conv1_column/bias/Read/ReadVariableOp'table_output/kernel/Read/ReadVariableOp%table_output/bias/Read/ReadVariableOp(column_output/kernel/Read/ReadVariableOp&column_output/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block3_conv4/kernel/Read/ReadVariableOp%block3_conv4/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block4_conv4/kernel/Read/ReadVariableOp%block4_conv4/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOp'block5_conv4/kernel/Read/ReadVariableOp%block5_conv4/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOp.Adam/block6_conv1/kernel/m/Read/ReadVariableOp,Adam/block6_conv1/bias/m/Read/ReadVariableOp.Adam/block6_conv2/kernel/m/Read/ReadVariableOp,Adam/block6_conv2/bias/m/Read/ReadVariableOp5Adam/block7_conv1_column/kernel/m/Read/ReadVariableOp3Adam/block7_conv1_column/bias/m/Read/ReadVariableOp-Adam/conv7_table/kernel/m/Read/ReadVariableOp+Adam/conv7_table/bias/m/Read/ReadVariableOp5Adam/block8_conv1_column/kernel/m/Read/ReadVariableOp3Adam/block8_conv1_column/bias/m/Read/ReadVariableOp.Adam/table_output/kernel/m/Read/ReadVariableOp,Adam/table_output/bias/m/Read/ReadVariableOp/Adam/column_output/kernel/m/Read/ReadVariableOp-Adam/column_output/bias/m/Read/ReadVariableOp.Adam/block6_conv1/kernel/v/Read/ReadVariableOp,Adam/block6_conv1/bias/v/Read/ReadVariableOp.Adam/block6_conv2/kernel/v/Read/ReadVariableOp,Adam/block6_conv2/bias/v/Read/ReadVariableOp5Adam/block7_conv1_column/kernel/v/Read/ReadVariableOp3Adam/block7_conv1_column/bias/v/Read/ReadVariableOp-Adam/conv7_table/kernel/v/Read/ReadVariableOp+Adam/conv7_table/bias/v/Read/ReadVariableOp5Adam/block8_conv1_column/kernel/v/Read/ReadVariableOp3Adam/block8_conv1_column/bias/v/Read/ReadVariableOp.Adam/table_output/kernel/v/Read/ReadVariableOp,Adam/table_output/bias/v/Read/ReadVariableOp/Adam/column_output/kernel/v/Read/ReadVariableOp-Adam/column_output/bias/v/Read/ReadVariableOpConst*f
Tin_
]2[	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_11974
м
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameblock6_conv1/kernelblock6_conv1/biasblock6_conv2/kernelblock6_conv2/biasblock7_conv1_column/kernelblock7_conv1_column/biasconv7_table/kernelconv7_table/biasblock8_conv1_column/kernelblock8_conv1_column/biastable_output/kerneltable_output/biascolumn_output/kernelcolumn_output/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock3_conv4/kernelblock3_conv4/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock4_conv4/kernelblock4_conv4/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasblock5_conv4/kernelblock5_conv4/biastotalcounttotal_1count_1total_2count_2total_3count_3total_4count_4Adam/block6_conv1/kernel/mAdam/block6_conv1/bias/mAdam/block6_conv2/kernel/mAdam/block6_conv2/bias/m!Adam/block7_conv1_column/kernel/mAdam/block7_conv1_column/bias/mAdam/conv7_table/kernel/mAdam/conv7_table/bias/m!Adam/block8_conv1_column/kernel/mAdam/block8_conv1_column/bias/mAdam/table_output/kernel/mAdam/table_output/bias/mAdam/column_output/kernel/mAdam/column_output/bias/mAdam/block6_conv1/kernel/vAdam/block6_conv1/bias/vAdam/block6_conv2/kernel/vAdam/block6_conv2/bias/v!Adam/block7_conv1_column/kernel/vAdam/block7_conv1_column/bias/vAdam/conv7_table/kernel/vAdam/conv7_table/bias/v!Adam/block8_conv1_column/kernel/vAdam/block8_conv1_column/bias/vAdam/table_output/kernel/vAdam/table_output/bias/vAdam/column_output/kernel/vAdam/column_output/bias/v*e
Tin^
\2Z*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_12251јЁ#
„
£
,__inference_block2_conv1_layer_call_fn_11423

inputs"
unknown:@А
	unknown_0:	А
identityИҐStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_75962
StatefulPartitionedCallЩ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:€€€€€€€€€ААА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА@
 
_user_specified_nameinputs
÷
J
.__inference_up_sampling2d_4_layer_call_fn_8591

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_85852
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ќ
F
*__inference_block3_pool_layer_call_fn_7519

inputs
identityй
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_75132
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
£
Г
G__inference_block3_conv3_layer_call_and_return_conditional_losses_11494

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€@@А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
Ґ
В
F__inference_block3_conv4_layer_call_and_return_conditional_losses_7682

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€@@А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
Ґ
В
F__inference_block4_conv4_layer_call_and_return_conditional_losses_7751

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
ѓx
щ
@__inference_VGG-19_layer_call_and_return_conditional_losses_8553
input_1+
block1_conv1_8465:@
block1_conv1_8467:@+
block1_conv2_8470:@@
block1_conv2_8472:@,
block2_conv1_8476:@А 
block2_conv1_8478:	А-
block2_conv2_8481:АА 
block2_conv2_8483:	А-
block3_conv1_8487:АА 
block3_conv1_8489:	А-
block3_conv2_8492:АА 
block3_conv2_8494:	А-
block3_conv3_8497:АА 
block3_conv3_8499:	А-
block3_conv4_8502:АА 
block3_conv4_8504:	А-
block4_conv1_8508:АА 
block4_conv1_8510:	А-
block4_conv2_8513:АА 
block4_conv2_8515:	А-
block4_conv3_8518:АА 
block4_conv3_8520:	А-
block4_conv4_8523:АА 
block4_conv4_8525:	А-
block5_conv1_8529:АА 
block5_conv1_8531:	А-
block5_conv2_8534:АА 
block5_conv2_8536:	А-
block5_conv3_8539:АА 
block5_conv3_8541:	А-
block5_conv4_8544:АА 
block5_conv4_8546:	А
identity

identity_1

identity_2ИҐ$block1_conv1/StatefulPartitionedCallҐ$block1_conv2/StatefulPartitionedCallҐ$block2_conv1/StatefulPartitionedCallҐ$block2_conv2/StatefulPartitionedCallҐ$block3_conv1/StatefulPartitionedCallҐ$block3_conv2/StatefulPartitionedCallҐ$block3_conv3/StatefulPartitionedCallҐ$block3_conv4/StatefulPartitionedCallҐ$block4_conv1/StatefulPartitionedCallҐ$block4_conv2/StatefulPartitionedCallҐ$block4_conv3/StatefulPartitionedCallҐ$block4_conv4/StatefulPartitionedCallҐ$block5_conv1/StatefulPartitionedCallҐ$block5_conv2/StatefulPartitionedCallҐ$block5_conv3/StatefulPartitionedCallҐ$block5_conv4/StatefulPartitionedCall∞
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_8465block1_conv1_8467*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_75612&
$block1_conv1/StatefulPartitionedCall÷
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_8470block1_conv2_8472*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_75782&
$block1_conv2/StatefulPartitionedCallП
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_74892
block1_pool/PartitionedCallќ
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_8476block2_conv1_8478*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_75962&
$block2_conv1/StatefulPartitionedCall„
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_8481block2_conv2_8483*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_76132&
$block2_conv2/StatefulPartitionedCallО
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_75012
block2_pool/PartitionedCallћ
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_8487block3_conv1_8489*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_76312&
$block3_conv1/StatefulPartitionedCall’
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_8492block3_conv2_8494*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_76482&
$block3_conv2/StatefulPartitionedCall’
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_8497block3_conv3_8499*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_76652&
$block3_conv3/StatefulPartitionedCall’
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_8502block3_conv4_8504*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv4_layer_call_and_return_conditional_losses_76822&
$block3_conv4/StatefulPartitionedCallО
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_75132
block3_pool/PartitionedCallћ
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_8508block4_conv1_8510*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_77002&
$block4_conv1/StatefulPartitionedCall’
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_8513block4_conv2_8515*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_77172&
$block4_conv2/StatefulPartitionedCall’
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_8518block4_conv3_8520*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_77342&
$block4_conv3/StatefulPartitionedCall’
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_8523block4_conv4_8525*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv4_layer_call_and_return_conditional_losses_77512&
$block4_conv4/StatefulPartitionedCallО
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_75252
block4_pool/PartitionedCallћ
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_8529block5_conv1_8531*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_77692&
$block5_conv1/StatefulPartitionedCall’
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_8534block5_conv2_8536*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_77862&
$block5_conv2/StatefulPartitionedCall’
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_8539block5_conv3_8541*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_78032&
$block5_conv3/StatefulPartitionedCall’
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_8544block5_conv4_8546*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv4_layer_call_and_return_conditional_losses_78202&
$block5_conv4/StatefulPartitionedCallО
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_75372
block5_pool/PartitionedCallс
IdentityIdentity$block3_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identityх

Identity_1Identity$block4_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1х

Identity_2Identity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€АА
!
_user_specified_name	input_1
Ґ
В
F__inference_block4_conv3_layer_call_and_return_conditional_losses_7734

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
Ґ
Б
E__inference_conv7_table_layer_call_and_return_conditional_losses_8967

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
о
K
/__inference_block6_dropout1_layer_call_fn_11172

inputs
identity”
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_block6_dropout1_layer_call_and_return_conditional_losses_88892
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ъ
Q
5__inference_block7_dropout_column_layer_call_fn_11266

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block7_dropout_column_layer_call_and_return_conditional_losses_89372
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
а
№
'__inference_tablenet_layer_call_fn_9692	
input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИҐStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_tablenet_layer_call_and_return_conditional_losses_94962
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identityђ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:€€€€€€€€€АА

_user_specified_nameinput
ќ
F
*__inference_block2_pool_layer_call_fn_7507

inputs
identityй
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_75012
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
“
§
,__inference_block5_conv2_layer_call_fn_11643

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_77862
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ы
h
J__inference_block6_dropout2_layer_call_and_return_conditional_losses_11202

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
“
§
,__inference_block5_conv4_layer_call_fn_11683

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv4_layer_call_and_return_conditional_losses_78202
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
÷¶
≠%
__inference__traced_save_11974
file_prefix2
.savev2_block6_conv1_kernel_read_readvariableop0
,savev2_block6_conv1_bias_read_readvariableop2
.savev2_block6_conv2_kernel_read_readvariableop0
,savev2_block6_conv2_bias_read_readvariableop9
5savev2_block7_conv1_column_kernel_read_readvariableop7
3savev2_block7_conv1_column_bias_read_readvariableop1
-savev2_conv7_table_kernel_read_readvariableop/
+savev2_conv7_table_bias_read_readvariableop9
5savev2_block8_conv1_column_kernel_read_readvariableop7
3savev2_block8_conv1_column_bias_read_readvariableop2
.savev2_table_output_kernel_read_readvariableop0
,savev2_table_output_bias_read_readvariableop3
/savev2_column_output_kernel_read_readvariableop1
-savev2_column_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block3_conv4_kernel_read_readvariableop0
,savev2_block3_conv4_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block4_conv4_kernel_read_readvariableop0
,savev2_block4_conv4_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop2
.savev2_block5_conv4_kernel_read_readvariableop0
,savev2_block5_conv4_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop9
5savev2_adam_block6_conv1_kernel_m_read_readvariableop7
3savev2_adam_block6_conv1_bias_m_read_readvariableop9
5savev2_adam_block6_conv2_kernel_m_read_readvariableop7
3savev2_adam_block6_conv2_bias_m_read_readvariableop@
<savev2_adam_block7_conv1_column_kernel_m_read_readvariableop>
:savev2_adam_block7_conv1_column_bias_m_read_readvariableop8
4savev2_adam_conv7_table_kernel_m_read_readvariableop6
2savev2_adam_conv7_table_bias_m_read_readvariableop@
<savev2_adam_block8_conv1_column_kernel_m_read_readvariableop>
:savev2_adam_block8_conv1_column_bias_m_read_readvariableop9
5savev2_adam_table_output_kernel_m_read_readvariableop7
3savev2_adam_table_output_bias_m_read_readvariableop:
6savev2_adam_column_output_kernel_m_read_readvariableop8
4savev2_adam_column_output_bias_m_read_readvariableop9
5savev2_adam_block6_conv1_kernel_v_read_readvariableop7
3savev2_adam_block6_conv1_bias_v_read_readvariableop9
5savev2_adam_block6_conv2_kernel_v_read_readvariableop7
3savev2_adam_block6_conv2_bias_v_read_readvariableop@
<savev2_adam_block7_conv1_column_kernel_v_read_readvariableop>
:savev2_adam_block7_conv1_column_bias_v_read_readvariableop8
4savev2_adam_conv7_table_kernel_v_read_readvariableop6
2savev2_adam_conv7_table_bias_v_read_readvariableop@
<savev2_adam_block8_conv1_column_kernel_v_read_readvariableop>
:savev2_adam_block8_conv1_column_bias_v_read_readvariableop9
5savev2_adam_table_output_kernel_v_read_readvariableop7
3savev2_adam_table_output_bias_v_read_readvariableop:
6savev2_adam_column_output_kernel_v_read_readvariableop8
4savev2_adam_column_output_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameќ)
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Z*
dtype0*а(
value÷(B”(ZB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesњ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Z*
dtype0*…
valueњBЉZB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesс#
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_block6_conv1_kernel_read_readvariableop,savev2_block6_conv1_bias_read_readvariableop.savev2_block6_conv2_kernel_read_readvariableop,savev2_block6_conv2_bias_read_readvariableop5savev2_block7_conv1_column_kernel_read_readvariableop3savev2_block7_conv1_column_bias_read_readvariableop-savev2_conv7_table_kernel_read_readvariableop+savev2_conv7_table_bias_read_readvariableop5savev2_block8_conv1_column_kernel_read_readvariableop3savev2_block8_conv1_column_bias_read_readvariableop.savev2_table_output_kernel_read_readvariableop,savev2_table_output_bias_read_readvariableop/savev2_column_output_kernel_read_readvariableop-savev2_column_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block3_conv4_kernel_read_readvariableop,savev2_block3_conv4_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block4_conv4_kernel_read_readvariableop,savev2_block4_conv4_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop.savev2_block5_conv4_kernel_read_readvariableop,savev2_block5_conv4_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop5savev2_adam_block6_conv1_kernel_m_read_readvariableop3savev2_adam_block6_conv1_bias_m_read_readvariableop5savev2_adam_block6_conv2_kernel_m_read_readvariableop3savev2_adam_block6_conv2_bias_m_read_readvariableop<savev2_adam_block7_conv1_column_kernel_m_read_readvariableop:savev2_adam_block7_conv1_column_bias_m_read_readvariableop4savev2_adam_conv7_table_kernel_m_read_readvariableop2savev2_adam_conv7_table_bias_m_read_readvariableop<savev2_adam_block8_conv1_column_kernel_m_read_readvariableop:savev2_adam_block8_conv1_column_bias_m_read_readvariableop5savev2_adam_table_output_kernel_m_read_readvariableop3savev2_adam_table_output_bias_m_read_readvariableop6savev2_adam_column_output_kernel_m_read_readvariableop4savev2_adam_column_output_bias_m_read_readvariableop5savev2_adam_block6_conv1_kernel_v_read_readvariableop3savev2_adam_block6_conv1_bias_v_read_readvariableop5savev2_adam_block6_conv2_kernel_v_read_readvariableop3savev2_adam_block6_conv2_bias_v_read_readvariableop<savev2_adam_block7_conv1_column_kernel_v_read_readvariableop:savev2_adam_block7_conv1_column_bias_v_read_readvariableop4savev2_adam_conv7_table_kernel_v_read_readvariableop2savev2_adam_conv7_table_bias_v_read_readvariableop<savev2_adam_block8_conv1_column_kernel_v_read_readvariableop:savev2_adam_block8_conv1_column_bias_v_read_readvariableop5savev2_adam_table_output_kernel_v_read_readvariableop3savev2_adam_table_output_bias_v_read_readvariableop6savev2_adam_column_output_kernel_v_read_readvariableop4savev2_adam_column_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *h
dtypes^
\2Z	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Л
_input_shapesщ
ц: :АА:А:АА:А:АА:А:АА:А:АА:А:А
::А
:: : : : : :@:@:@@:@:@А:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А: : : : : : : : : : :АА:А:АА:А:АА:А:АА:А:АА:А:А
::А
::АА:А:АА:А:АА:А:АА:А:АА:А:А
::А
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:-)
'
_output_shapes
:А
: 

_output_shapes
::-)
'
_output_shapes
:А
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:. *
(
_output_shapes
:АА:!!

_output_shapes	
:А:."*
(
_output_shapes
:АА:!#

_output_shapes	
:А:.$*
(
_output_shapes
:АА:!%

_output_shapes	
:А:.&*
(
_output_shapes
:АА:!'

_output_shapes	
:А:.(*
(
_output_shapes
:АА:!)

_output_shapes	
:А:.**
(
_output_shapes
:АА:!+

_output_shapes	
:А:.,*
(
_output_shapes
:АА:!-

_output_shapes	
:А:..*
(
_output_shapes
:АА:!/

_output_shapes	
:А:.0*
(
_output_shapes
:АА:!1

_output_shapes	
:А:.2*
(
_output_shapes
:АА:!3

_output_shapes	
:А:4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :.>*
(
_output_shapes
:АА:!?

_output_shapes	
:А:.@*
(
_output_shapes
:АА:!A

_output_shapes	
:А:.B*
(
_output_shapes
:АА:!C

_output_shapes	
:А:.D*
(
_output_shapes
:АА:!E

_output_shapes	
:А:.F*
(
_output_shapes
:АА:!G

_output_shapes	
:А:-H)
'
_output_shapes
:А
: I

_output_shapes
::-J)
'
_output_shapes
:А
: K

_output_shapes
::.L*
(
_output_shapes
:АА:!M

_output_shapes	
:А:.N*
(
_output_shapes
:АА:!O

_output_shapes	
:А:.P*
(
_output_shapes
:АА:!Q

_output_shapes	
:А:.R*
(
_output_shapes
:АА:!S

_output_shapes	
:А:.T*
(
_output_shapes
:АА:!U

_output_shapes	
:А:-V)
'
_output_shapes
:А
: W

_output_shapes
::-X)
'
_output_shapes
:А
: Y

_output_shapes
::Z

_output_shapes
: 
Ѓ
В
F__inference_block2_conv2_layer_call_and_return_conditional_losses_7613

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp¶
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЛ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
ReluҐ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*2
_output_shapes 
:€€€€€€€€€ААА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":€€€€€€€€€ААА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:€€€€€€€€€ААА
 
_user_specified_nameinputs
Ъ
g
I__inference_block6_dropout2_layer_call_and_return_conditional_losses_8913

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
£
Г
G__inference_block4_conv2_layer_call_and_return_conditional_losses_11554

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
“
§
,__inference_block4_conv2_layer_call_fn_11563

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_77172
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
“
§
,__inference_block3_conv3_layer_call_fn_11503

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_76652
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€@@А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
ђx
ш
@__inference_VGG-19_layer_call_and_return_conditional_losses_8227

inputs+
block1_conv1_8139:@
block1_conv1_8141:@+
block1_conv2_8144:@@
block1_conv2_8146:@,
block2_conv1_8150:@А 
block2_conv1_8152:	А-
block2_conv2_8155:АА 
block2_conv2_8157:	А-
block3_conv1_8161:АА 
block3_conv1_8163:	А-
block3_conv2_8166:АА 
block3_conv2_8168:	А-
block3_conv3_8171:АА 
block3_conv3_8173:	А-
block3_conv4_8176:АА 
block3_conv4_8178:	А-
block4_conv1_8182:АА 
block4_conv1_8184:	А-
block4_conv2_8187:АА 
block4_conv2_8189:	А-
block4_conv3_8192:АА 
block4_conv3_8194:	А-
block4_conv4_8197:АА 
block4_conv4_8199:	А-
block5_conv1_8203:АА 
block5_conv1_8205:	А-
block5_conv2_8208:АА 
block5_conv2_8210:	А-
block5_conv3_8213:АА 
block5_conv3_8215:	А-
block5_conv4_8218:АА 
block5_conv4_8220:	А
identity

identity_1

identity_2ИҐ$block1_conv1/StatefulPartitionedCallҐ$block1_conv2/StatefulPartitionedCallҐ$block2_conv1/StatefulPartitionedCallҐ$block2_conv2/StatefulPartitionedCallҐ$block3_conv1/StatefulPartitionedCallҐ$block3_conv2/StatefulPartitionedCallҐ$block3_conv3/StatefulPartitionedCallҐ$block3_conv4/StatefulPartitionedCallҐ$block4_conv1/StatefulPartitionedCallҐ$block4_conv2/StatefulPartitionedCallҐ$block4_conv3/StatefulPartitionedCallҐ$block4_conv4/StatefulPartitionedCallҐ$block5_conv1/StatefulPartitionedCallҐ$block5_conv2/StatefulPartitionedCallҐ$block5_conv3/StatefulPartitionedCallҐ$block5_conv4/StatefulPartitionedCallѓ
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_8139block1_conv1_8141*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_75612&
$block1_conv1/StatefulPartitionedCall÷
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_8144block1_conv2_8146*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_75782&
$block1_conv2/StatefulPartitionedCallП
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_74892
block1_pool/PartitionedCallќ
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_8150block2_conv1_8152*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_75962&
$block2_conv1/StatefulPartitionedCall„
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_8155block2_conv2_8157*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_76132&
$block2_conv2/StatefulPartitionedCallО
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_75012
block2_pool/PartitionedCallћ
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_8161block3_conv1_8163*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_76312&
$block3_conv1/StatefulPartitionedCall’
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_8166block3_conv2_8168*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_76482&
$block3_conv2/StatefulPartitionedCall’
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_8171block3_conv3_8173*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_76652&
$block3_conv3/StatefulPartitionedCall’
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_8176block3_conv4_8178*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv4_layer_call_and_return_conditional_losses_76822&
$block3_conv4/StatefulPartitionedCallО
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_75132
block3_pool/PartitionedCallћ
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_8182block4_conv1_8184*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_77002&
$block4_conv1/StatefulPartitionedCall’
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_8187block4_conv2_8189*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_77172&
$block4_conv2/StatefulPartitionedCall’
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_8192block4_conv3_8194*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_77342&
$block4_conv3/StatefulPartitionedCall’
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_8197block4_conv4_8199*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv4_layer_call_and_return_conditional_losses_77512&
$block4_conv4/StatefulPartitionedCallО
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_75252
block4_pool/PartitionedCallћ
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_8203block5_conv1_8205*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_77692&
$block5_conv1/StatefulPartitionedCall’
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_8208block5_conv2_8210*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_77862&
$block5_conv2/StatefulPartitionedCall’
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_8213block5_conv3_8215*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_78032&
$block5_conv3/StatefulPartitionedCall’
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_8218block5_conv4_8220*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv4_layer_call_and_return_conditional_losses_78202&
$block5_conv4/StatefulPartitionedCallО
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_75372
block5_pool/PartitionedCallс
IdentityIdentity$block3_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identityх

Identity_1Identity$block4_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1х

Identity_2Identity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
§
Г
G__inference_block6_conv2_layer_call_and_return_conditional_losses_11188

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
“
§
,__inference_block3_conv4_layer_call_fn_11523

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv4_layer_call_and_return_conditional_losses_76822
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€@@А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
Џ
§
,__inference_block2_conv2_layer_call_fn_11443

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_76132
StatefulPartitionedCallЩ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:€€€€€€€€€ААА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":€€€€€€€€€ААА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:€€€€€€€€€ААА
 
_user_specified_nameinputs
£
В
F__inference_conv7_table_layer_call_and_return_conditional_losses_11282

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
£
Г
G__inference_block3_conv4_layer_call_and_return_conditional_losses_11514

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€@@А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
их
€9
!__inference__traced_restore_12251
file_prefix@
$assignvariableop_block6_conv1_kernel:АА3
$assignvariableop_1_block6_conv1_bias:	АB
&assignvariableop_2_block6_conv2_kernel:АА3
$assignvariableop_3_block6_conv2_bias:	АI
-assignvariableop_4_block7_conv1_column_kernel:АА:
+assignvariableop_5_block7_conv1_column_bias:	АA
%assignvariableop_6_conv7_table_kernel:АА2
#assignvariableop_7_conv7_table_bias:	АI
-assignvariableop_8_block8_conv1_column_kernel:АА:
+assignvariableop_9_block8_conv1_column_bias:	АB
'assignvariableop_10_table_output_kernel:А
3
%assignvariableop_11_table_output_bias:C
(assignvariableop_12_column_output_kernel:А
4
&assignvariableop_13_column_output_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: A
'assignvariableop_19_block1_conv1_kernel:@3
%assignvariableop_20_block1_conv1_bias:@A
'assignvariableop_21_block1_conv2_kernel:@@3
%assignvariableop_22_block1_conv2_bias:@B
'assignvariableop_23_block2_conv1_kernel:@А4
%assignvariableop_24_block2_conv1_bias:	АC
'assignvariableop_25_block2_conv2_kernel:АА4
%assignvariableop_26_block2_conv2_bias:	АC
'assignvariableop_27_block3_conv1_kernel:АА4
%assignvariableop_28_block3_conv1_bias:	АC
'assignvariableop_29_block3_conv2_kernel:АА4
%assignvariableop_30_block3_conv2_bias:	АC
'assignvariableop_31_block3_conv3_kernel:АА4
%assignvariableop_32_block3_conv3_bias:	АC
'assignvariableop_33_block3_conv4_kernel:АА4
%assignvariableop_34_block3_conv4_bias:	АC
'assignvariableop_35_block4_conv1_kernel:АА4
%assignvariableop_36_block4_conv1_bias:	АC
'assignvariableop_37_block4_conv2_kernel:АА4
%assignvariableop_38_block4_conv2_bias:	АC
'assignvariableop_39_block4_conv3_kernel:АА4
%assignvariableop_40_block4_conv3_bias:	АC
'assignvariableop_41_block4_conv4_kernel:АА4
%assignvariableop_42_block4_conv4_bias:	АC
'assignvariableop_43_block5_conv1_kernel:АА4
%assignvariableop_44_block5_conv1_bias:	АC
'assignvariableop_45_block5_conv2_kernel:АА4
%assignvariableop_46_block5_conv2_bias:	АC
'assignvariableop_47_block5_conv3_kernel:АА4
%assignvariableop_48_block5_conv3_bias:	АC
'assignvariableop_49_block5_conv4_kernel:АА4
%assignvariableop_50_block5_conv4_bias:	А#
assignvariableop_51_total: #
assignvariableop_52_count: %
assignvariableop_53_total_1: %
assignvariableop_54_count_1: %
assignvariableop_55_total_2: %
assignvariableop_56_count_2: %
assignvariableop_57_total_3: %
assignvariableop_58_count_3: %
assignvariableop_59_total_4: %
assignvariableop_60_count_4: J
.assignvariableop_61_adam_block6_conv1_kernel_m:АА;
,assignvariableop_62_adam_block6_conv1_bias_m:	АJ
.assignvariableop_63_adam_block6_conv2_kernel_m:АА;
,assignvariableop_64_adam_block6_conv2_bias_m:	АQ
5assignvariableop_65_adam_block7_conv1_column_kernel_m:ААB
3assignvariableop_66_adam_block7_conv1_column_bias_m:	АI
-assignvariableop_67_adam_conv7_table_kernel_m:АА:
+assignvariableop_68_adam_conv7_table_bias_m:	АQ
5assignvariableop_69_adam_block8_conv1_column_kernel_m:ААB
3assignvariableop_70_adam_block8_conv1_column_bias_m:	АI
.assignvariableop_71_adam_table_output_kernel_m:А
:
,assignvariableop_72_adam_table_output_bias_m:J
/assignvariableop_73_adam_column_output_kernel_m:А
;
-assignvariableop_74_adam_column_output_bias_m:J
.assignvariableop_75_adam_block6_conv1_kernel_v:АА;
,assignvariableop_76_adam_block6_conv1_bias_v:	АJ
.assignvariableop_77_adam_block6_conv2_kernel_v:АА;
,assignvariableop_78_adam_block6_conv2_bias_v:	АQ
5assignvariableop_79_adam_block7_conv1_column_kernel_v:ААB
3assignvariableop_80_adam_block7_conv1_column_bias_v:	АI
-assignvariableop_81_adam_conv7_table_kernel_v:АА:
+assignvariableop_82_adam_conv7_table_bias_v:	АQ
5assignvariableop_83_adam_block8_conv1_column_kernel_v:ААB
3assignvariableop_84_adam_block8_conv1_column_bias_v:	АI
.assignvariableop_85_adam_table_output_kernel_v:А
:
,assignvariableop_86_adam_table_output_bias_v:J
/assignvariableop_87_adam_column_output_kernel_v:А
;
-assignvariableop_88_adam_column_output_bias_v:
identity_90ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_71ҐAssignVariableOp_72ҐAssignVariableOp_73ҐAssignVariableOp_74ҐAssignVariableOp_75ҐAssignVariableOp_76ҐAssignVariableOp_77ҐAssignVariableOp_78ҐAssignVariableOp_79ҐAssignVariableOp_8ҐAssignVariableOp_80ҐAssignVariableOp_81ҐAssignVariableOp_82ҐAssignVariableOp_83ҐAssignVariableOp_84ҐAssignVariableOp_85ҐAssignVariableOp_86ҐAssignVariableOp_87ҐAssignVariableOp_88ҐAssignVariableOp_9‘)
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Z*
dtype0*а(
value÷(B”(ZB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names≈
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Z*
dtype0*…
valueњBЉZB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesр
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ю
_output_shapesл
и::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*h
dtypes^
\2Z	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity£
AssignVariableOpAssignVariableOp$assignvariableop_block6_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1©
AssignVariableOp_1AssignVariableOp$assignvariableop_1_block6_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ђ
AssignVariableOp_2AssignVariableOp&assignvariableop_2_block6_conv2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3©
AssignVariableOp_3AssignVariableOp$assignvariableop_3_block6_conv2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4≤
AssignVariableOp_4AssignVariableOp-assignvariableop_4_block7_conv1_column_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5∞
AssignVariableOp_5AssignVariableOp+assignvariableop_5_block7_conv1_column_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6™
AssignVariableOp_6AssignVariableOp%assignvariableop_6_conv7_table_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7®
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv7_table_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8≤
AssignVariableOp_8AssignVariableOp-assignvariableop_8_block8_conv1_column_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9∞
AssignVariableOp_9AssignVariableOp+assignvariableop_9_block8_conv1_column_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10ѓ
AssignVariableOp_10AssignVariableOp'assignvariableop_10_table_output_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11≠
AssignVariableOp_11AssignVariableOp%assignvariableop_11_table_output_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12∞
AssignVariableOp_12AssignVariableOp(assignvariableop_12_column_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ѓ
AssignVariableOp_13AssignVariableOp&assignvariableop_13_column_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14•
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15І
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16І
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¶
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ѓ
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19ѓ
AssignVariableOp_19AssignVariableOp'assignvariableop_19_block1_conv1_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20≠
AssignVariableOp_20AssignVariableOp%assignvariableop_20_block1_conv1_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21ѓ
AssignVariableOp_21AssignVariableOp'assignvariableop_21_block1_conv2_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22≠
AssignVariableOp_22AssignVariableOp%assignvariableop_22_block1_conv2_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23ѓ
AssignVariableOp_23AssignVariableOp'assignvariableop_23_block2_conv1_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24≠
AssignVariableOp_24AssignVariableOp%assignvariableop_24_block2_conv1_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25ѓ
AssignVariableOp_25AssignVariableOp'assignvariableop_25_block2_conv2_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26≠
AssignVariableOp_26AssignVariableOp%assignvariableop_26_block2_conv2_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27ѓ
AssignVariableOp_27AssignVariableOp'assignvariableop_27_block3_conv1_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28≠
AssignVariableOp_28AssignVariableOp%assignvariableop_28_block3_conv1_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29ѓ
AssignVariableOp_29AssignVariableOp'assignvariableop_29_block3_conv2_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30≠
AssignVariableOp_30AssignVariableOp%assignvariableop_30_block3_conv2_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31ѓ
AssignVariableOp_31AssignVariableOp'assignvariableop_31_block3_conv3_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32≠
AssignVariableOp_32AssignVariableOp%assignvariableop_32_block3_conv3_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33ѓ
AssignVariableOp_33AssignVariableOp'assignvariableop_33_block3_conv4_kernelIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34≠
AssignVariableOp_34AssignVariableOp%assignvariableop_34_block3_conv4_biasIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35ѓ
AssignVariableOp_35AssignVariableOp'assignvariableop_35_block4_conv1_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36≠
AssignVariableOp_36AssignVariableOp%assignvariableop_36_block4_conv1_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37ѓ
AssignVariableOp_37AssignVariableOp'assignvariableop_37_block4_conv2_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38≠
AssignVariableOp_38AssignVariableOp%assignvariableop_38_block4_conv2_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39ѓ
AssignVariableOp_39AssignVariableOp'assignvariableop_39_block4_conv3_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40≠
AssignVariableOp_40AssignVariableOp%assignvariableop_40_block4_conv3_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41ѓ
AssignVariableOp_41AssignVariableOp'assignvariableop_41_block4_conv4_kernelIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42≠
AssignVariableOp_42AssignVariableOp%assignvariableop_42_block4_conv4_biasIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43ѓ
AssignVariableOp_43AssignVariableOp'assignvariableop_43_block5_conv1_kernelIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44≠
AssignVariableOp_44AssignVariableOp%assignvariableop_44_block5_conv1_biasIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45ѓ
AssignVariableOp_45AssignVariableOp'assignvariableop_45_block5_conv2_kernelIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46≠
AssignVariableOp_46AssignVariableOp%assignvariableop_46_block5_conv2_biasIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47ѓ
AssignVariableOp_47AssignVariableOp'assignvariableop_47_block5_conv3_kernelIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48≠
AssignVariableOp_48AssignVariableOp%assignvariableop_48_block5_conv3_biasIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49ѓ
AssignVariableOp_49AssignVariableOp'assignvariableop_49_block5_conv4_kernelIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50≠
AssignVariableOp_50AssignVariableOp%assignvariableop_50_block5_conv4_biasIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51°
AssignVariableOp_51AssignVariableOpassignvariableop_51_totalIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52°
AssignVariableOp_52AssignVariableOpassignvariableop_52_countIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53£
AssignVariableOp_53AssignVariableOpassignvariableop_53_total_1Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54£
AssignVariableOp_54AssignVariableOpassignvariableop_54_count_1Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55£
AssignVariableOp_55AssignVariableOpassignvariableop_55_total_2Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56£
AssignVariableOp_56AssignVariableOpassignvariableop_56_count_2Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57£
AssignVariableOp_57AssignVariableOpassignvariableop_57_total_3Identity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58£
AssignVariableOp_58AssignVariableOpassignvariableop_58_count_3Identity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59£
AssignVariableOp_59AssignVariableOpassignvariableop_59_total_4Identity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60£
AssignVariableOp_60AssignVariableOpassignvariableop_60_count_4Identity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61ґ
AssignVariableOp_61AssignVariableOp.assignvariableop_61_adam_block6_conv1_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62і
AssignVariableOp_62AssignVariableOp,assignvariableop_62_adam_block6_conv1_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63ґ
AssignVariableOp_63AssignVariableOp.assignvariableop_63_adam_block6_conv2_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64і
AssignVariableOp_64AssignVariableOp,assignvariableop_64_adam_block6_conv2_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65љ
AssignVariableOp_65AssignVariableOp5assignvariableop_65_adam_block7_conv1_column_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66ї
AssignVariableOp_66AssignVariableOp3assignvariableop_66_adam_block7_conv1_column_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67µ
AssignVariableOp_67AssignVariableOp-assignvariableop_67_adam_conv7_table_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68≥
AssignVariableOp_68AssignVariableOp+assignvariableop_68_adam_conv7_table_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69љ
AssignVariableOp_69AssignVariableOp5assignvariableop_69_adam_block8_conv1_column_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70ї
AssignVariableOp_70AssignVariableOp3assignvariableop_70_adam_block8_conv1_column_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71ґ
AssignVariableOp_71AssignVariableOp.assignvariableop_71_adam_table_output_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72і
AssignVariableOp_72AssignVariableOp,assignvariableop_72_adam_table_output_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73Ј
AssignVariableOp_73AssignVariableOp/assignvariableop_73_adam_column_output_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74µ
AssignVariableOp_74AssignVariableOp-assignvariableop_74_adam_column_output_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75ґ
AssignVariableOp_75AssignVariableOp.assignvariableop_75_adam_block6_conv1_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76і
AssignVariableOp_76AssignVariableOp,assignvariableop_76_adam_block6_conv1_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77ґ
AssignVariableOp_77AssignVariableOp.assignvariableop_77_adam_block6_conv2_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78і
AssignVariableOp_78AssignVariableOp,assignvariableop_78_adam_block6_conv2_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79љ
AssignVariableOp_79AssignVariableOp5assignvariableop_79_adam_block7_conv1_column_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80ї
AssignVariableOp_80AssignVariableOp3assignvariableop_80_adam_block7_conv1_column_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81µ
AssignVariableOp_81AssignVariableOp-assignvariableop_81_adam_conv7_table_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82≥
AssignVariableOp_82AssignVariableOp+assignvariableop_82_adam_conv7_table_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83љ
AssignVariableOp_83AssignVariableOp5assignvariableop_83_adam_block8_conv1_column_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84ї
AssignVariableOp_84AssignVariableOp3assignvariableop_84_adam_block8_conv1_column_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85ґ
AssignVariableOp_85AssignVariableOp.assignvariableop_85_adam_table_output_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86і
AssignVariableOp_86AssignVariableOp,assignvariableop_86_adam_table_output_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87Ј
AssignVariableOp_87AssignVariableOp/assignvariableop_87_adam_column_output_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88µ
AssignVariableOp_88AssignVariableOp-assignvariableop_88_adam_column_output_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_889
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpД
Identity_89Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_89ч
Identity_90IdentityIdentity_89:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_90"#
identity_90Identity_90:output:0*…
_input_shapesЈ
і: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
†
m
O__inference_block7_dropout_column_layer_call_and_return_conditional_losses_8937

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ґ
В
F__inference_block5_conv2_layer_call_and_return_conditional_losses_7786

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ
Ы	
%__inference_VGG-19_layer_call_fn_7901
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:€€€€€€€€€  А:€€€€€€€€€А:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_VGG-19_layer_call_and_return_conditional_losses_78302
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

IdentityЫ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1Ы

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€АА
!
_user_specified_name	input_1
•
a
E__inference_block5_pool_layer_call_and_return_conditional_losses_7537

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
щ
h
I__inference_block6_dropout1_layer_call_and_return_conditional_losses_9260

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †@2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeљ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?2
dropout/GreaterEqual/y«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
÷
J
.__inference_up_sampling2d_5_layer_call_fn_8629

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_86232
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ѓ
Г
G__inference_block2_conv2_layer_call_and_return_conditional_losses_11434

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp¶
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЛ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
ReluҐ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*2
_output_shapes 
:€€€€€€€€€ААА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":€€€€€€€€€ААА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:€€€€€€€€€ААА
 
_user_specified_nameinputs
Х
°
+__inference_table_output_layer_call_fn_8749

inputs"
unknown:А

	unknown_0:
identityИҐStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_table_output_layer_call_and_return_conditional_losses_87392
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А

 
_user_specified_nameinputs
”
°
,__inference_block1_conv2_layer_call_fn_11403

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_75782
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:€€€€€€€€€АА@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА@
 
_user_specified_nameinputs
™
Й
M__inference_block7_conv1_column_layer_call_and_return_conditional_losses_8926

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ъ
i
J__inference_block6_dropout2_layer_call_and_return_conditional_losses_11214

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †@2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeљ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?2
dropout/GreaterEqual/y«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
∞
e
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_8661

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ќ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul’
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
half_pixel_centers(2
resize/ResizeNearestNeighbor§
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ґ
В
F__inference_block4_conv2_layer_call_and_return_conditional_losses_7717

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
∞
e
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_8585

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ќ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul’
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
half_pixel_centers(2
resize/ResizeNearestNeighbor§
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ґ
В
F__inference_block5_conv3_layer_call_and_return_conditional_losses_7803

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Щz
ћ
B__inference_tablenet_layer_call_and_return_conditional_losses_9936	
input%
vgg_19_9817:@
vgg_19_9819:@%
vgg_19_9821:@@
vgg_19_9823:@&
vgg_19_9825:@А
vgg_19_9827:	А'
vgg_19_9829:АА
vgg_19_9831:	А'
vgg_19_9833:АА
vgg_19_9835:	А'
vgg_19_9837:АА
vgg_19_9839:	А'
vgg_19_9841:АА
vgg_19_9843:	А'
vgg_19_9845:АА
vgg_19_9847:	А'
vgg_19_9849:АА
vgg_19_9851:	А'
vgg_19_9853:АА
vgg_19_9855:	А'
vgg_19_9857:АА
vgg_19_9859:	А'
vgg_19_9861:АА
vgg_19_9863:	А'
vgg_19_9865:АА
vgg_19_9867:	А'
vgg_19_9869:АА
vgg_19_9871:	А'
vgg_19_9873:АА
vgg_19_9875:	А'
vgg_19_9877:АА
vgg_19_9879:	А-
block6_conv1_9884:АА 
block6_conv1_9886:	А-
block6_conv2_9890:АА 
block6_conv2_9892:	А4
block7_conv1_column_9896:АА'
block7_conv1_column_9898:	А4
block8_conv1_column_9902:АА'
block8_conv1_column_9904:	А,
conv7_table_9907:АА
conv7_table_9909:	А-
column_output_9924:А
 
column_output_9926:,
table_output_9929:А

table_output_9931:
identity

identity_1ИҐVGG-19/StatefulPartitionedCallҐ$block6_conv1/StatefulPartitionedCallҐ$block6_conv2/StatefulPartitionedCallҐ'block6_dropout1/StatefulPartitionedCallҐ'block6_dropout2/StatefulPartitionedCallҐ+block7_conv1_column/StatefulPartitionedCallҐ-block7_dropout_column/StatefulPartitionedCallҐ+block8_conv1_column/StatefulPartitionedCallҐ%column_output/StatefulPartitionedCallҐ#conv7_table/StatefulPartitionedCallҐ$table_output/StatefulPartitionedCallЛ
VGG-19/StatefulPartitionedCallStatefulPartitionedCallinputvgg_19_9817vgg_19_9819vgg_19_9821vgg_19_9823vgg_19_9825vgg_19_9827vgg_19_9829vgg_19_9831vgg_19_9833vgg_19_9835vgg_19_9837vgg_19_9839vgg_19_9841vgg_19_9843vgg_19_9845vgg_19_9847vgg_19_9849vgg_19_9851vgg_19_9853vgg_19_9855vgg_19_9857vgg_19_9859vgg_19_9861vgg_19_9863vgg_19_9865vgg_19_9867vgg_19_9869vgg_19_9871vgg_19_9873vgg_19_9875vgg_19_9877vgg_19_9879*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:€€€€€€€€€  А:€€€€€€€€€А:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_VGG-19_layer_call_and_return_conditional_losses_82272 
VGG-19/StatefulPartitionedCallѕ
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall'VGG-19/StatefulPartitionedCall:output:2block6_conv1_9884block6_conv1_9886*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block6_conv1_layer_call_and_return_conditional_losses_88782&
$block6_conv1/StatefulPartitionedCall≤
'block6_dropout1/StatefulPartitionedCallStatefulPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_block6_dropout1_layer_call_and_return_conditional_losses_92602)
'block6_dropout1/StatefulPartitionedCallЎ
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout1/StatefulPartitionedCall:output:0block6_conv2_9890block6_conv2_9892*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block6_conv2_layer_call_and_return_conditional_losses_89022&
$block6_conv2/StatefulPartitionedCall№
'block6_dropout2/StatefulPartitionedCallStatefulPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0(^block6_dropout1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_block6_dropout2_layer_call_and_return_conditional_losses_92272)
'block6_dropout2/StatefulPartitionedCallы
+block7_conv1_column/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout2/StatefulPartitionedCall:output:0block7_conv1_column_9896block7_conv1_column_9898*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_block7_conv1_column_layer_call_and_return_conditional_losses_89262-
+block7_conv1_column/StatefulPartitionedCallх
-block7_dropout_column/StatefulPartitionedCallStatefulPartitionedCall4block7_conv1_column/StatefulPartitionedCall:output:0(^block6_dropout2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block7_dropout_column_layer_call_and_return_conditional_losses_91942/
-block7_dropout_column/StatefulPartitionedCallБ
+block8_conv1_column/StatefulPartitionedCallStatefulPartitionedCall6block7_dropout_column/StatefulPartitionedCall:output:0block8_conv1_column_9902block8_conv1_column_9904*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_block8_conv1_column_layer_call_and_return_conditional_losses_89502-
+block8_conv1_column/StatefulPartitionedCall”
#conv7_table/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout2/StatefulPartitionedCall:output:0conv7_table_9907conv7_table_9909*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv7_table_layer_call_and_return_conditional_losses_89672%
#conv7_table/StatefulPartitionedCall≥
up_sampling2d_4/PartitionedCallPartitionedCall4block8_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_85852!
up_sampling2d_4/PartitionedCall•
up_sampling2d/PartitionedCallPartitionedCall,conv7_table/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_85662
up_sampling2d/PartitionedCallє
concatenate_2/PartitionedCallPartitionedCall(up_sampling2d_4/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_2_layer_call_and_return_conditional_losses_89822
concatenate_2/PartitionedCall±
concatenate/PartitionedCallPartitionedCall&up_sampling2d/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_89912
concatenate/PartitionedCall•
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_86232!
up_sampling2d_5/PartitionedCall£
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_86042!
up_sampling2d_1/PartitionedCallє
concatenate_3/PartitionedCallPartitionedCall(up_sampling2d_5/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_3_layer_call_and_return_conditional_losses_90022
concatenate_3/PartitionedCallє
concatenate_1/PartitionedCallPartitionedCall(up_sampling2d_1/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_90112
concatenate_1/PartitionedCall•
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_86612!
up_sampling2d_6/PartitionedCall•
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_86422!
up_sampling2d_2/PartitionedCallІ
up_sampling2d_7/PartitionedCallPartitionedCall(up_sampling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_86992!
up_sampling2d_7/PartitionedCallІ
up_sampling2d_3/PartitionedCallPartitionedCall(up_sampling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_86802!
up_sampling2d_3/PartitionedCallж
%column_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0column_output_9924column_output_9926*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_column_output_layer_call_and_return_conditional_losses_87832'
%column_output/StatefulPartitionedCallб
$table_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0table_output_9929table_output_9931*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_table_output_layer_call_and_return_conditional_losses_87392&
$table_output/StatefulPartitionedCallя
IdentityIdentity-table_output/StatefulPartitionedCall:output:0^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall(^block6_dropout1/StatefulPartitionedCall(^block6_dropout2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall.^block7_dropout_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identityд

Identity_1Identity.column_output/StatefulPartitionedCall:output:0^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall(^block6_dropout1/StatefulPartitionedCall(^block6_dropout2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall.^block7_dropout_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
VGG-19/StatefulPartitionedCallVGG-19/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2R
'block6_dropout1/StatefulPartitionedCall'block6_dropout1/StatefulPartitionedCall2R
'block6_dropout2/StatefulPartitionedCall'block6_dropout2/StatefulPartitionedCall2Z
+block7_conv1_column/StatefulPartitionedCall+block7_conv1_column/StatefulPartitionedCall2^
-block7_dropout_column/StatefulPartitionedCall-block7_dropout_column/StatefulPartitionedCall2Z
+block8_conv1_column/StatefulPartitionedCall+block8_conv1_column/StatefulPartitionedCall2N
%column_output/StatefulPartitionedCall%column_output/StatefulPartitionedCall2J
#conv7_table/StatefulPartitionedCall#conv7_table/StatefulPartitionedCall2L
$table_output/StatefulPartitionedCall$table_output/StatefulPartitionedCall:X T
1
_output_shapes
:€€€€€€€€€АА

_user_specified_nameinput
А
o
P__inference_block7_dropout_column_layer_call_and_return_conditional_losses_11261

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †@2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeљ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?2
dropout/GreaterEqual/y«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ђx
ш
@__inference_VGG-19_layer_call_and_return_conditional_losses_7830

inputs+
block1_conv1_7562:@
block1_conv1_7564:@+
block1_conv2_7579:@@
block1_conv2_7581:@,
block2_conv1_7597:@А 
block2_conv1_7599:	А-
block2_conv2_7614:АА 
block2_conv2_7616:	А-
block3_conv1_7632:АА 
block3_conv1_7634:	А-
block3_conv2_7649:АА 
block3_conv2_7651:	А-
block3_conv3_7666:АА 
block3_conv3_7668:	А-
block3_conv4_7683:АА 
block3_conv4_7685:	А-
block4_conv1_7701:АА 
block4_conv1_7703:	А-
block4_conv2_7718:АА 
block4_conv2_7720:	А-
block4_conv3_7735:АА 
block4_conv3_7737:	А-
block4_conv4_7752:АА 
block4_conv4_7754:	А-
block5_conv1_7770:АА 
block5_conv1_7772:	А-
block5_conv2_7787:АА 
block5_conv2_7789:	А-
block5_conv3_7804:АА 
block5_conv3_7806:	А-
block5_conv4_7821:АА 
block5_conv4_7823:	А
identity

identity_1

identity_2ИҐ$block1_conv1/StatefulPartitionedCallҐ$block1_conv2/StatefulPartitionedCallҐ$block2_conv1/StatefulPartitionedCallҐ$block2_conv2/StatefulPartitionedCallҐ$block3_conv1/StatefulPartitionedCallҐ$block3_conv2/StatefulPartitionedCallҐ$block3_conv3/StatefulPartitionedCallҐ$block3_conv4/StatefulPartitionedCallҐ$block4_conv1/StatefulPartitionedCallҐ$block4_conv2/StatefulPartitionedCallҐ$block4_conv3/StatefulPartitionedCallҐ$block4_conv4/StatefulPartitionedCallҐ$block5_conv1/StatefulPartitionedCallҐ$block5_conv2/StatefulPartitionedCallҐ$block5_conv3/StatefulPartitionedCallҐ$block5_conv4/StatefulPartitionedCallѓ
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_7562block1_conv1_7564*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_75612&
$block1_conv1/StatefulPartitionedCall÷
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_7579block1_conv2_7581*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_75782&
$block1_conv2/StatefulPartitionedCallП
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_74892
block1_pool/PartitionedCallќ
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_7597block2_conv1_7599*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_75962&
$block2_conv1/StatefulPartitionedCall„
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_7614block2_conv2_7616*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_76132&
$block2_conv2/StatefulPartitionedCallО
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_75012
block2_pool/PartitionedCallћ
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_7632block3_conv1_7634*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_76312&
$block3_conv1/StatefulPartitionedCall’
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_7649block3_conv2_7651*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_76482&
$block3_conv2/StatefulPartitionedCall’
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_7666block3_conv3_7668*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_76652&
$block3_conv3/StatefulPartitionedCall’
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_7683block3_conv4_7685*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv4_layer_call_and_return_conditional_losses_76822&
$block3_conv4/StatefulPartitionedCallО
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_75132
block3_pool/PartitionedCallћ
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_7701block4_conv1_7703*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_77002&
$block4_conv1/StatefulPartitionedCall’
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_7718block4_conv2_7720*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_77172&
$block4_conv2/StatefulPartitionedCall’
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_7735block4_conv3_7737*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_77342&
$block4_conv3/StatefulPartitionedCall’
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_7752block4_conv4_7754*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv4_layer_call_and_return_conditional_losses_77512&
$block4_conv4/StatefulPartitionedCallО
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_75252
block4_pool/PartitionedCallћ
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_7770block5_conv1_7772*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_77692&
$block5_conv1/StatefulPartitionedCall’
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_7787block5_conv2_7789*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_77862&
$block5_conv2/StatefulPartitionedCall’
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_7804block5_conv3_7806*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_78032&
$block5_conv3/StatefulPartitionedCall’
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_7821block5_conv4_7823*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv4_layer_call_and_return_conditional_losses_78202&
$block5_conv4/StatefulPartitionedCallО
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_75372
block5_pool/PartitionedCallс
IdentityIdentity$block3_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identityх

Identity_1Identity$block4_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1х

Identity_2Identity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ў
Ы	
&__inference_VGG-19_layer_call_fn_11130

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall—
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:€€€€€€€€€  А:€€€€€€€€€А:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_VGG-19_layer_call_and_return_conditional_losses_82272
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

IdentityЫ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1Ы

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
£
В
F__inference_block6_conv1_layer_call_and_return_conditional_losses_8878

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
÷
J
.__inference_up_sampling2d_6_layer_call_fn_8667

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_86612
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ѓ$
Ф
F__inference_table_output_layer_call_and_return_conditional_losses_8739

inputsC
(conv2d_transpose_readvariableop_resource:А
-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2м
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2м
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2м
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3і
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype02!
conv2d_transpose/ReadVariableOpр
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp§
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2	
BiasAddє
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А

 
_user_specified_nameinputs
“
§
,__inference_block3_conv1_layer_call_fn_11463

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_76312
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€@@А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
£
Г
G__inference_block4_conv4_layer_call_and_return_conditional_losses_11594

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
Ґ
€
F__inference_block1_conv1_layer_call_and_return_conditional_losses_7561

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
Relu°
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€АА@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ъ
g
I__inference_block6_dropout1_layer_call_and_return_conditional_losses_8889

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≤Н
ќ*
C__inference_tablenet_layer_call_and_return_conditional_losses_10281

inputsL
2vgg_19_block1_conv1_conv2d_readvariableop_resource:@A
3vgg_19_block1_conv1_biasadd_readvariableop_resource:@L
2vgg_19_block1_conv2_conv2d_readvariableop_resource:@@A
3vgg_19_block1_conv2_biasadd_readvariableop_resource:@M
2vgg_19_block2_conv1_conv2d_readvariableop_resource:@АB
3vgg_19_block2_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block2_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block2_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv4_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv4_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv4_biasadd_readvariableop_resource:	АG
+block6_conv1_conv2d_readvariableop_resource:АА;
,block6_conv1_biasadd_readvariableop_resource:	АG
+block6_conv2_conv2d_readvariableop_resource:АА;
,block6_conv2_biasadd_readvariableop_resource:	АN
2block7_conv1_column_conv2d_readvariableop_resource:ААB
3block7_conv1_column_biasadd_readvariableop_resource:	АN
2block8_conv1_column_conv2d_readvariableop_resource:ААB
3block8_conv1_column_biasadd_readvariableop_resource:	АF
*conv7_table_conv2d_readvariableop_resource:АА:
+conv7_table_biasadd_readvariableop_resource:	АQ
6column_output_conv2d_transpose_readvariableop_resource:А
;
-column_output_biasadd_readvariableop_resource:P
5table_output_conv2d_transpose_readvariableop_resource:А
:
,table_output_biasadd_readvariableop_resource:
identity

identity_1ИҐ*VGG-19/block1_conv1/BiasAdd/ReadVariableOpҐ)VGG-19/block1_conv1/Conv2D/ReadVariableOpҐ*VGG-19/block1_conv2/BiasAdd/ReadVariableOpҐ)VGG-19/block1_conv2/Conv2D/ReadVariableOpҐ*VGG-19/block2_conv1/BiasAdd/ReadVariableOpҐ)VGG-19/block2_conv1/Conv2D/ReadVariableOpҐ*VGG-19/block2_conv2/BiasAdd/ReadVariableOpҐ)VGG-19/block2_conv2/Conv2D/ReadVariableOpҐ*VGG-19/block3_conv1/BiasAdd/ReadVariableOpҐ)VGG-19/block3_conv1/Conv2D/ReadVariableOpҐ*VGG-19/block3_conv2/BiasAdd/ReadVariableOpҐ)VGG-19/block3_conv2/Conv2D/ReadVariableOpҐ*VGG-19/block3_conv3/BiasAdd/ReadVariableOpҐ)VGG-19/block3_conv3/Conv2D/ReadVariableOpҐ*VGG-19/block3_conv4/BiasAdd/ReadVariableOpҐ)VGG-19/block3_conv4/Conv2D/ReadVariableOpҐ*VGG-19/block4_conv1/BiasAdd/ReadVariableOpҐ)VGG-19/block4_conv1/Conv2D/ReadVariableOpҐ*VGG-19/block4_conv2/BiasAdd/ReadVariableOpҐ)VGG-19/block4_conv2/Conv2D/ReadVariableOpҐ*VGG-19/block4_conv3/BiasAdd/ReadVariableOpҐ)VGG-19/block4_conv3/Conv2D/ReadVariableOpҐ*VGG-19/block4_conv4/BiasAdd/ReadVariableOpҐ)VGG-19/block4_conv4/Conv2D/ReadVariableOpҐ*VGG-19/block5_conv1/BiasAdd/ReadVariableOpҐ)VGG-19/block5_conv1/Conv2D/ReadVariableOpҐ*VGG-19/block5_conv2/BiasAdd/ReadVariableOpҐ)VGG-19/block5_conv2/Conv2D/ReadVariableOpҐ*VGG-19/block5_conv3/BiasAdd/ReadVariableOpҐ)VGG-19/block5_conv3/Conv2D/ReadVariableOpҐ*VGG-19/block5_conv4/BiasAdd/ReadVariableOpҐ)VGG-19/block5_conv4/Conv2D/ReadVariableOpҐ#block6_conv1/BiasAdd/ReadVariableOpҐ"block6_conv1/Conv2D/ReadVariableOpҐ#block6_conv2/BiasAdd/ReadVariableOpҐ"block6_conv2/Conv2D/ReadVariableOpҐ*block7_conv1_column/BiasAdd/ReadVariableOpҐ)block7_conv1_column/Conv2D/ReadVariableOpҐ*block8_conv1_column/BiasAdd/ReadVariableOpҐ)block8_conv1_column/Conv2D/ReadVariableOpҐ$column_output/BiasAdd/ReadVariableOpҐ-column_output/conv2d_transpose/ReadVariableOpҐ"conv7_table/BiasAdd/ReadVariableOpҐ!conv7_table/Conv2D/ReadVariableOpҐ#table_output/BiasAdd/ReadVariableOpҐ,table_output/conv2d_transpose/ReadVariableOp—
)VGG-19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02+
)VGG-19/block1_conv1/Conv2D/ReadVariableOpб
VGG-19/block1_conv1/Conv2DConv2Dinputs1VGG-19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2
VGG-19/block1_conv1/Conv2D»
*VGG-19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*VGG-19/block1_conv1/BiasAdd/ReadVariableOpЏ
VGG-19/block1_conv1/BiasAddBiasAdd#VGG-19/block1_conv1/Conv2D:output:02VGG-19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
VGG-19/block1_conv1/BiasAddЮ
VGG-19/block1_conv1/ReluRelu$VGG-19/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
VGG-19/block1_conv1/Relu—
)VGG-19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02+
)VGG-19/block1_conv2/Conv2D/ReadVariableOpБ
VGG-19/block1_conv2/Conv2DConv2D&VGG-19/block1_conv1/Relu:activations:01VGG-19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2
VGG-19/block1_conv2/Conv2D»
*VGG-19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*VGG-19/block1_conv2/BiasAdd/ReadVariableOpЏ
VGG-19/block1_conv2/BiasAddBiasAdd#VGG-19/block1_conv2/Conv2D:output:02VGG-19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
VGG-19/block1_conv2/BiasAddЮ
VGG-19/block1_conv2/ReluRelu$VGG-19/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
VGG-19/block1_conv2/ReluЏ
VGG-19/block1_pool/MaxPoolMaxPool&VGG-19/block1_conv2/Relu:activations:0*1
_output_shapes
:€€€€€€€€€АА@*
ksize
*
paddingVALID*
strides
2
VGG-19/block1_pool/MaxPool“
)VGG-19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02+
)VGG-19/block2_conv1/Conv2D/ReadVariableOp€
VGG-19/block2_conv1/Conv2DConv2D#VGG-19/block1_pool/MaxPool:output:01VGG-19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2
VGG-19/block2_conv1/Conv2D…
*VGG-19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block2_conv1/BiasAdd/ReadVariableOpџ
VGG-19/block2_conv1/BiasAddBiasAdd#VGG-19/block2_conv1/Conv2D:output:02VGG-19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
VGG-19/block2_conv1/BiasAddЯ
VGG-19/block2_conv1/ReluRelu$VGG-19/block2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
VGG-19/block2_conv1/Relu”
)VGG-19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block2_conv2/Conv2D/ReadVariableOpВ
VGG-19/block2_conv2/Conv2DConv2D&VGG-19/block2_conv1/Relu:activations:01VGG-19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2
VGG-19/block2_conv2/Conv2D…
*VGG-19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block2_conv2/BiasAdd/ReadVariableOpџ
VGG-19/block2_conv2/BiasAddBiasAdd#VGG-19/block2_conv2/Conv2D:output:02VGG-19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
VGG-19/block2_conv2/BiasAddЯ
VGG-19/block2_conv2/ReluRelu$VGG-19/block2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
VGG-19/block2_conv2/Reluў
VGG-19/block2_pool/MaxPoolMaxPool&VGG-19/block2_conv2/Relu:activations:0*0
_output_shapes
:€€€€€€€€€@@А*
ksize
*
paddingVALID*
strides
2
VGG-19/block2_pool/MaxPool”
)VGG-19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block3_conv1/Conv2D/ReadVariableOpэ
VGG-19/block3_conv1/Conv2DConv2D#VGG-19/block2_pool/MaxPool:output:01VGG-19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
VGG-19/block3_conv1/Conv2D…
*VGG-19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block3_conv1/BiasAdd/ReadVariableOpў
VGG-19/block3_conv1/BiasAddBiasAdd#VGG-19/block3_conv1/Conv2D:output:02VGG-19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv1/BiasAddЭ
VGG-19/block3_conv1/ReluRelu$VGG-19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv1/Relu”
)VGG-19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block3_conv2/Conv2D/ReadVariableOpА
VGG-19/block3_conv2/Conv2DConv2D&VGG-19/block3_conv1/Relu:activations:01VGG-19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
VGG-19/block3_conv2/Conv2D…
*VGG-19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block3_conv2/BiasAdd/ReadVariableOpў
VGG-19/block3_conv2/BiasAddBiasAdd#VGG-19/block3_conv2/Conv2D:output:02VGG-19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv2/BiasAddЭ
VGG-19/block3_conv2/ReluRelu$VGG-19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv2/Relu”
)VGG-19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block3_conv3/Conv2D/ReadVariableOpА
VGG-19/block3_conv3/Conv2DConv2D&VGG-19/block3_conv2/Relu:activations:01VGG-19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
VGG-19/block3_conv3/Conv2D…
*VGG-19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block3_conv3/BiasAdd/ReadVariableOpў
VGG-19/block3_conv3/BiasAddBiasAdd#VGG-19/block3_conv3/Conv2D:output:02VGG-19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv3/BiasAddЭ
VGG-19/block3_conv3/ReluRelu$VGG-19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv3/Relu”
)VGG-19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block3_conv4/Conv2D/ReadVariableOpА
VGG-19/block3_conv4/Conv2DConv2D&VGG-19/block3_conv3/Relu:activations:01VGG-19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
VGG-19/block3_conv4/Conv2D…
*VGG-19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block3_conv4/BiasAdd/ReadVariableOpў
VGG-19/block3_conv4/BiasAddBiasAdd#VGG-19/block3_conv4/Conv2D:output:02VGG-19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv4/BiasAddЭ
VGG-19/block3_conv4/ReluRelu$VGG-19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv4/Reluў
VGG-19/block3_pool/MaxPoolMaxPool&VGG-19/block3_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€  А*
ksize
*
paddingVALID*
strides
2
VGG-19/block3_pool/MaxPool”
)VGG-19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block4_conv1/Conv2D/ReadVariableOpэ
VGG-19/block4_conv1/Conv2DConv2D#VGG-19/block3_pool/MaxPool:output:01VGG-19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
VGG-19/block4_conv1/Conv2D…
*VGG-19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block4_conv1/BiasAdd/ReadVariableOpў
VGG-19/block4_conv1/BiasAddBiasAdd#VGG-19/block4_conv1/Conv2D:output:02VGG-19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv1/BiasAddЭ
VGG-19/block4_conv1/ReluRelu$VGG-19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv1/Relu”
)VGG-19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block4_conv2/Conv2D/ReadVariableOpА
VGG-19/block4_conv2/Conv2DConv2D&VGG-19/block4_conv1/Relu:activations:01VGG-19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
VGG-19/block4_conv2/Conv2D…
*VGG-19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block4_conv2/BiasAdd/ReadVariableOpў
VGG-19/block4_conv2/BiasAddBiasAdd#VGG-19/block4_conv2/Conv2D:output:02VGG-19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv2/BiasAddЭ
VGG-19/block4_conv2/ReluRelu$VGG-19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv2/Relu”
)VGG-19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block4_conv3/Conv2D/ReadVariableOpА
VGG-19/block4_conv3/Conv2DConv2D&VGG-19/block4_conv2/Relu:activations:01VGG-19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
VGG-19/block4_conv3/Conv2D…
*VGG-19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block4_conv3/BiasAdd/ReadVariableOpў
VGG-19/block4_conv3/BiasAddBiasAdd#VGG-19/block4_conv3/Conv2D:output:02VGG-19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv3/BiasAddЭ
VGG-19/block4_conv3/ReluRelu$VGG-19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv3/Relu”
)VGG-19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block4_conv4/Conv2D/ReadVariableOpА
VGG-19/block4_conv4/Conv2DConv2D&VGG-19/block4_conv3/Relu:activations:01VGG-19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
VGG-19/block4_conv4/Conv2D…
*VGG-19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block4_conv4/BiasAdd/ReadVariableOpў
VGG-19/block4_conv4/BiasAddBiasAdd#VGG-19/block4_conv4/Conv2D:output:02VGG-19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv4/BiasAddЭ
VGG-19/block4_conv4/ReluRelu$VGG-19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv4/Reluў
VGG-19/block4_pool/MaxPoolMaxPool&VGG-19/block4_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
VGG-19/block4_pool/MaxPool”
)VGG-19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block5_conv1/Conv2D/ReadVariableOpэ
VGG-19/block5_conv1/Conv2DConv2D#VGG-19/block4_pool/MaxPool:output:01VGG-19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
VGG-19/block5_conv1/Conv2D…
*VGG-19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block5_conv1/BiasAdd/ReadVariableOpў
VGG-19/block5_conv1/BiasAddBiasAdd#VGG-19/block5_conv1/Conv2D:output:02VGG-19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv1/BiasAddЭ
VGG-19/block5_conv1/ReluRelu$VGG-19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv1/Relu”
)VGG-19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block5_conv2/Conv2D/ReadVariableOpА
VGG-19/block5_conv2/Conv2DConv2D&VGG-19/block5_conv1/Relu:activations:01VGG-19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
VGG-19/block5_conv2/Conv2D…
*VGG-19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block5_conv2/BiasAdd/ReadVariableOpў
VGG-19/block5_conv2/BiasAddBiasAdd#VGG-19/block5_conv2/Conv2D:output:02VGG-19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv2/BiasAddЭ
VGG-19/block5_conv2/ReluRelu$VGG-19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv2/Relu”
)VGG-19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block5_conv3/Conv2D/ReadVariableOpА
VGG-19/block5_conv3/Conv2DConv2D&VGG-19/block5_conv2/Relu:activations:01VGG-19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
VGG-19/block5_conv3/Conv2D…
*VGG-19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block5_conv3/BiasAdd/ReadVariableOpў
VGG-19/block5_conv3/BiasAddBiasAdd#VGG-19/block5_conv3/Conv2D:output:02VGG-19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv3/BiasAddЭ
VGG-19/block5_conv3/ReluRelu$VGG-19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv3/Relu”
)VGG-19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block5_conv4/Conv2D/ReadVariableOpА
VGG-19/block5_conv4/Conv2DConv2D&VGG-19/block5_conv3/Relu:activations:01VGG-19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
VGG-19/block5_conv4/Conv2D…
*VGG-19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block5_conv4/BiasAdd/ReadVariableOpў
VGG-19/block5_conv4/BiasAddBiasAdd#VGG-19/block5_conv4/Conv2D:output:02VGG-19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv4/BiasAddЭ
VGG-19/block5_conv4/ReluRelu$VGG-19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv4/Reluў
VGG-19/block5_pool/MaxPoolMaxPool&VGG-19/block5_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
VGG-19/block5_pool/MaxPoolЊ
"block6_conv1/Conv2D/ReadVariableOpReadVariableOp+block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block6_conv1/Conv2D/ReadVariableOpй
block6_conv1/Conv2DConv2D#VGG-19/block5_pool/MaxPool:output:0*block6_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
block6_conv1/Conv2Dі
#block6_conv1/BiasAdd/ReadVariableOpReadVariableOp,block6_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block6_conv1/BiasAdd/ReadVariableOpљ
block6_conv1/BiasAddBiasAddblock6_conv1/Conv2D:output:0+block6_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_conv1/BiasAddИ
block6_conv1/ReluRelublock6_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_conv1/ReluЬ
block6_dropout1/IdentityIdentityblock6_conv1/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_dropout1/IdentityЊ
"block6_conv2/Conv2D/ReadVariableOpReadVariableOp+block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block6_conv2/Conv2D/ReadVariableOpз
block6_conv2/Conv2DConv2D!block6_dropout1/Identity:output:0*block6_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
block6_conv2/Conv2Dі
#block6_conv2/BiasAdd/ReadVariableOpReadVariableOp,block6_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block6_conv2/BiasAdd/ReadVariableOpљ
block6_conv2/BiasAddBiasAddblock6_conv2/Conv2D:output:0+block6_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_conv2/BiasAddИ
block6_conv2/ReluRelublock6_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_conv2/ReluЬ
block6_dropout2/IdentityIdentityblock6_conv2/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_dropout2/Identity”
)block7_conv1_column/Conv2D/ReadVariableOpReadVariableOp2block7_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)block7_conv1_column/Conv2D/ReadVariableOpь
block7_conv1_column/Conv2DConv2D!block6_dropout2/Identity:output:01block7_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
block7_conv1_column/Conv2D…
*block7_conv1_column/BiasAdd/ReadVariableOpReadVariableOp3block7_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*block7_conv1_column/BiasAdd/ReadVariableOpў
block7_conv1_column/BiasAddBiasAdd#block7_conv1_column/Conv2D:output:02block7_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block7_conv1_column/BiasAddЭ
block7_conv1_column/ReluRelu$block7_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block7_conv1_column/Reluѓ
block7_dropout_column/IdentityIdentity&block7_conv1_column/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А2 
block7_dropout_column/Identity”
)block8_conv1_column/Conv2D/ReadVariableOpReadVariableOp2block8_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)block8_conv1_column/Conv2D/ReadVariableOpВ
block8_conv1_column/Conv2DConv2D'block7_dropout_column/Identity:output:01block8_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
block8_conv1_column/Conv2D…
*block8_conv1_column/BiasAdd/ReadVariableOpReadVariableOp3block8_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*block8_conv1_column/BiasAdd/ReadVariableOpў
block8_conv1_column/BiasAddBiasAdd#block8_conv1_column/Conv2D:output:02block8_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block8_conv1_column/BiasAddЭ
block8_conv1_column/ReluRelu$block8_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block8_conv1_column/Reluї
!conv7_table/Conv2D/ReadVariableOpReadVariableOp*conv7_table_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02#
!conv7_table/Conv2D/ReadVariableOpд
conv7_table/Conv2DConv2D!block6_dropout2/Identity:output:0)conv7_table/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
conv7_table/Conv2D±
"conv7_table/BiasAdd/ReadVariableOpReadVariableOp+conv7_table_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02$
"conv7_table/BiasAdd/ReadVariableOpє
conv7_table/BiasAddBiasAddconv7_table/Conv2D:output:0*conv7_table/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv7_table/BiasAddЕ
conv7_table/ReluReluconv7_table/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv7_table/Relu
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_4/ConstГ
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_4/Const_1Ш
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_4/mulЛ
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor&block8_conv1_column/Relu:activations:0up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€А*
half_pixel_centers(2.
,up_sampling2d_4/resize/ResizeNearestNeighbor{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_1Р
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mulэ
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborconv7_table/Relu:activations:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€А*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighborx
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axisД
concatenate_2/concatConcatV2=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block4_pool/MaxPool:output:0"concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€А2
concatenate_2/concatt
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisь
concatenate/concatConcatV2;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block4_pool/MaxPool:output:0 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€А2
concatenate/concat
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_5/ConstГ
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_5/Const_1Ш
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_5/mulВ
,up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_2/concat:output:0up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
half_pixel_centers(2.
,up_sampling2d_5/resize/ResizeNearestNeighbor
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/ConstГ
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1Ш
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mulА
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate/concat:output:0up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighborx
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axisД
concatenate_3/concatConcatV2=up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block3_pool/MaxPool:output:0"concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  А
2
concatenate_3/concatx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axisД
concatenate_1/concatConcatV2=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block3_pool/MaxPool:output:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  А
2
concatenate_1/concat
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_6/ConstГ
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_6/Const_1Ш
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_6/mulВ
,up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_3/concat:output:0up_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€@@А
*
half_pixel_centers(2.
,up_sampling2d_6/resize/ResizeNearestNeighbor
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_2/ConstГ
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const_1Ш
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mulВ
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€@@А
*
half_pixel_centers(2.
,up_sampling2d_2/resize/ResizeNearestNeighbor
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_7/ConstГ
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_7/Const_1Ш
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_7/mul§
,up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_7/mul:z:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА
*
half_pixel_centers(2.
,up_sampling2d_7/resize/ResizeNearestNeighbor
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_3/ConstГ
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const_1Ш
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_3/mul§
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА
*
half_pixel_centers(2.
,up_sampling2d_3/resize/ResizeNearestNeighborЧ
column_output/ShapeShape=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
column_output/ShapeР
!column_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!column_output/strided_slice/stackФ
#column_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#column_output/strided_slice/stack_1Ф
#column_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#column_output/strided_slice/stack_2ґ
column_output/strided_sliceStridedSlicecolumn_output/Shape:output:0*column_output/strided_slice/stack:output:0,column_output/strided_slice/stack_1:output:0,column_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
column_output/strided_sliceq
column_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
column_output/stack/1q
column_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А2
column_output/stack/2p
column_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
column_output/stack/3ж
column_output/stackPack$column_output/strided_slice:output:0column_output/stack/1:output:0column_output/stack/2:output:0column_output/stack/3:output:0*
N*
T0*
_output_shapes
:2
column_output/stackФ
#column_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#column_output/strided_slice_1/stackШ
%column_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%column_output/strided_slice_1/stack_1Ш
%column_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%column_output/strided_slice_1/stack_2ј
column_output/strided_slice_1StridedSlicecolumn_output/stack:output:0,column_output/strided_slice_1/stack:output:0.column_output/strided_slice_1/stack_1:output:0.column_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
column_output/strided_slice_1ё
-column_output/conv2d_transpose/ReadVariableOpReadVariableOp6column_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype02/
-column_output/conv2d_transpose/ReadVariableOpѕ
column_output/conv2d_transposeConv2DBackpropInputcolumn_output/stack:output:05column_output/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
2 
column_output/conv2d_transposeґ
$column_output/BiasAdd/ReadVariableOpReadVariableOp-column_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$column_output/BiasAdd/ReadVariableOpћ
column_output/BiasAddBiasAdd'column_output/conv2d_transpose:output:0,column_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
column_output/BiasAddХ
table_output/ShapeShape=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
table_output/ShapeО
 table_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 table_output/strided_slice/stackТ
"table_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"table_output/strided_slice/stack_1Т
"table_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"table_output/strided_slice/stack_2∞
table_output/strided_sliceStridedSlicetable_output/Shape:output:0)table_output/strided_slice/stack:output:0+table_output/strided_slice/stack_1:output:0+table_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
table_output/strided_sliceo
table_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
table_output/stack/1o
table_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А2
table_output/stack/2n
table_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
table_output/stack/3а
table_output/stackPack#table_output/strided_slice:output:0table_output/stack/1:output:0table_output/stack/2:output:0table_output/stack/3:output:0*
N*
T0*
_output_shapes
:2
table_output/stackТ
"table_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"table_output/strided_slice_1/stackЦ
$table_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$table_output/strided_slice_1/stack_1Ц
$table_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$table_output/strided_slice_1/stack_2Ї
table_output/strided_slice_1StridedSlicetable_output/stack:output:0+table_output/strided_slice_1/stack:output:0-table_output/strided_slice_1/stack_1:output:0-table_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
table_output/strided_slice_1џ
,table_output/conv2d_transpose/ReadVariableOpReadVariableOp5table_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype02.
,table_output/conv2d_transpose/ReadVariableOpЋ
table_output/conv2d_transposeConv2DBackpropInputtable_output/stack:output:04table_output/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
2
table_output/conv2d_transpose≥
#table_output/BiasAdd/ReadVariableOpReadVariableOp,table_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#table_output/BiasAdd/ReadVariableOp»
table_output/BiasAddBiasAdd&table_output/conv2d_transpose:output:0+table_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
table_output/BiasAdd»
IdentityIdentitytable_output/BiasAdd:output:0+^VGG-19/block1_conv1/BiasAdd/ReadVariableOp*^VGG-19/block1_conv1/Conv2D/ReadVariableOp+^VGG-19/block1_conv2/BiasAdd/ReadVariableOp*^VGG-19/block1_conv2/Conv2D/ReadVariableOp+^VGG-19/block2_conv1/BiasAdd/ReadVariableOp*^VGG-19/block2_conv1/Conv2D/ReadVariableOp+^VGG-19/block2_conv2/BiasAdd/ReadVariableOp*^VGG-19/block2_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv1/BiasAdd/ReadVariableOp*^VGG-19/block3_conv1/Conv2D/ReadVariableOp+^VGG-19/block3_conv2/BiasAdd/ReadVariableOp*^VGG-19/block3_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv3/BiasAdd/ReadVariableOp*^VGG-19/block3_conv3/Conv2D/ReadVariableOp+^VGG-19/block3_conv4/BiasAdd/ReadVariableOp*^VGG-19/block3_conv4/Conv2D/ReadVariableOp+^VGG-19/block4_conv1/BiasAdd/ReadVariableOp*^VGG-19/block4_conv1/Conv2D/ReadVariableOp+^VGG-19/block4_conv2/BiasAdd/ReadVariableOp*^VGG-19/block4_conv2/Conv2D/ReadVariableOp+^VGG-19/block4_conv3/BiasAdd/ReadVariableOp*^VGG-19/block4_conv3/Conv2D/ReadVariableOp+^VGG-19/block4_conv4/BiasAdd/ReadVariableOp*^VGG-19/block4_conv4/Conv2D/ReadVariableOp+^VGG-19/block5_conv1/BiasAdd/ReadVariableOp*^VGG-19/block5_conv1/Conv2D/ReadVariableOp+^VGG-19/block5_conv2/BiasAdd/ReadVariableOp*^VGG-19/block5_conv2/Conv2D/ReadVariableOp+^VGG-19/block5_conv3/BiasAdd/ReadVariableOp*^VGG-19/block5_conv3/Conv2D/ReadVariableOp+^VGG-19/block5_conv4/BiasAdd/ReadVariableOp*^VGG-19/block5_conv4/Conv2D/ReadVariableOp$^block6_conv1/BiasAdd/ReadVariableOp#^block6_conv1/Conv2D/ReadVariableOp$^block6_conv2/BiasAdd/ReadVariableOp#^block6_conv2/Conv2D/ReadVariableOp+^block7_conv1_column/BiasAdd/ReadVariableOp*^block7_conv1_column/Conv2D/ReadVariableOp+^block8_conv1_column/BiasAdd/ReadVariableOp*^block8_conv1_column/Conv2D/ReadVariableOp%^column_output/BiasAdd/ReadVariableOp.^column_output/conv2d_transpose/ReadVariableOp#^conv7_table/BiasAdd/ReadVariableOp"^conv7_table/Conv2D/ReadVariableOp$^table_output/BiasAdd/ReadVariableOp-^table_output/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€АА2

IdentityЌ

Identity_1Identitycolumn_output/BiasAdd:output:0+^VGG-19/block1_conv1/BiasAdd/ReadVariableOp*^VGG-19/block1_conv1/Conv2D/ReadVariableOp+^VGG-19/block1_conv2/BiasAdd/ReadVariableOp*^VGG-19/block1_conv2/Conv2D/ReadVariableOp+^VGG-19/block2_conv1/BiasAdd/ReadVariableOp*^VGG-19/block2_conv1/Conv2D/ReadVariableOp+^VGG-19/block2_conv2/BiasAdd/ReadVariableOp*^VGG-19/block2_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv1/BiasAdd/ReadVariableOp*^VGG-19/block3_conv1/Conv2D/ReadVariableOp+^VGG-19/block3_conv2/BiasAdd/ReadVariableOp*^VGG-19/block3_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv3/BiasAdd/ReadVariableOp*^VGG-19/block3_conv3/Conv2D/ReadVariableOp+^VGG-19/block3_conv4/BiasAdd/ReadVariableOp*^VGG-19/block3_conv4/Conv2D/ReadVariableOp+^VGG-19/block4_conv1/BiasAdd/ReadVariableOp*^VGG-19/block4_conv1/Conv2D/ReadVariableOp+^VGG-19/block4_conv2/BiasAdd/ReadVariableOp*^VGG-19/block4_conv2/Conv2D/ReadVariableOp+^VGG-19/block4_conv3/BiasAdd/ReadVariableOp*^VGG-19/block4_conv3/Conv2D/ReadVariableOp+^VGG-19/block4_conv4/BiasAdd/ReadVariableOp*^VGG-19/block4_conv4/Conv2D/ReadVariableOp+^VGG-19/block5_conv1/BiasAdd/ReadVariableOp*^VGG-19/block5_conv1/Conv2D/ReadVariableOp+^VGG-19/block5_conv2/BiasAdd/ReadVariableOp*^VGG-19/block5_conv2/Conv2D/ReadVariableOp+^VGG-19/block5_conv3/BiasAdd/ReadVariableOp*^VGG-19/block5_conv3/Conv2D/ReadVariableOp+^VGG-19/block5_conv4/BiasAdd/ReadVariableOp*^VGG-19/block5_conv4/Conv2D/ReadVariableOp$^block6_conv1/BiasAdd/ReadVariableOp#^block6_conv1/Conv2D/ReadVariableOp$^block6_conv2/BiasAdd/ReadVariableOp#^block6_conv2/Conv2D/ReadVariableOp+^block7_conv1_column/BiasAdd/ReadVariableOp*^block7_conv1_column/Conv2D/ReadVariableOp+^block8_conv1_column/BiasAdd/ReadVariableOp*^block8_conv1_column/Conv2D/ReadVariableOp%^column_output/BiasAdd/ReadVariableOp.^column_output/conv2d_transpose/ReadVariableOp#^conv7_table/BiasAdd/ReadVariableOp"^conv7_table/Conv2D/ReadVariableOp$^table_output/BiasAdd/ReadVariableOp-^table_output/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*VGG-19/block1_conv1/BiasAdd/ReadVariableOp*VGG-19/block1_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block1_conv1/Conv2D/ReadVariableOp)VGG-19/block1_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block1_conv2/BiasAdd/ReadVariableOp*VGG-19/block1_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block1_conv2/Conv2D/ReadVariableOp)VGG-19/block1_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block2_conv1/BiasAdd/ReadVariableOp*VGG-19/block2_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block2_conv1/Conv2D/ReadVariableOp)VGG-19/block2_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block2_conv2/BiasAdd/ReadVariableOp*VGG-19/block2_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block2_conv2/Conv2D/ReadVariableOp)VGG-19/block2_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv1/BiasAdd/ReadVariableOp*VGG-19/block3_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv1/Conv2D/ReadVariableOp)VGG-19/block3_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv2/BiasAdd/ReadVariableOp*VGG-19/block3_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv2/Conv2D/ReadVariableOp)VGG-19/block3_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv3/BiasAdd/ReadVariableOp*VGG-19/block3_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv3/Conv2D/ReadVariableOp)VGG-19/block3_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv4/BiasAdd/ReadVariableOp*VGG-19/block3_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv4/Conv2D/ReadVariableOp)VGG-19/block3_conv4/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv1/BiasAdd/ReadVariableOp*VGG-19/block4_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv1/Conv2D/ReadVariableOp)VGG-19/block4_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv2/BiasAdd/ReadVariableOp*VGG-19/block4_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv2/Conv2D/ReadVariableOp)VGG-19/block4_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv3/BiasAdd/ReadVariableOp*VGG-19/block4_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv3/Conv2D/ReadVariableOp)VGG-19/block4_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv4/BiasAdd/ReadVariableOp*VGG-19/block4_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv4/Conv2D/ReadVariableOp)VGG-19/block4_conv4/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv1/BiasAdd/ReadVariableOp*VGG-19/block5_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv1/Conv2D/ReadVariableOp)VGG-19/block5_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv2/BiasAdd/ReadVariableOp*VGG-19/block5_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv2/Conv2D/ReadVariableOp)VGG-19/block5_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv3/BiasAdd/ReadVariableOp*VGG-19/block5_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv3/Conv2D/ReadVariableOp)VGG-19/block5_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv4/BiasAdd/ReadVariableOp*VGG-19/block5_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv4/Conv2D/ReadVariableOp)VGG-19/block5_conv4/Conv2D/ReadVariableOp2J
#block6_conv1/BiasAdd/ReadVariableOp#block6_conv1/BiasAdd/ReadVariableOp2H
"block6_conv1/Conv2D/ReadVariableOp"block6_conv1/Conv2D/ReadVariableOp2J
#block6_conv2/BiasAdd/ReadVariableOp#block6_conv2/BiasAdd/ReadVariableOp2H
"block6_conv2/Conv2D/ReadVariableOp"block6_conv2/Conv2D/ReadVariableOp2X
*block7_conv1_column/BiasAdd/ReadVariableOp*block7_conv1_column/BiasAdd/ReadVariableOp2V
)block7_conv1_column/Conv2D/ReadVariableOp)block7_conv1_column/Conv2D/ReadVariableOp2X
*block8_conv1_column/BiasAdd/ReadVariableOp*block8_conv1_column/BiasAdd/ReadVariableOp2V
)block8_conv1_column/Conv2D/ReadVariableOp)block8_conv1_column/Conv2D/ReadVariableOp2L
$column_output/BiasAdd/ReadVariableOp$column_output/BiasAdd/ReadVariableOp2^
-column_output/conv2d_transpose/ReadVariableOp-column_output/conv2d_transpose/ReadVariableOp2H
"conv7_table/BiasAdd/ReadVariableOp"conv7_table/BiasAdd/ReadVariableOp2F
!conv7_table/Conv2D/ReadVariableOp!conv7_table/Conv2D/ReadVariableOp2J
#table_output/BiasAdd/ReadVariableOp#table_output/BiasAdd/ReadVariableOp2\
,table_output/conv2d_transpose/ReadVariableOp,table_output/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Њћ
Й
A__inference_VGG-19_layer_call_and_return_conditional_losses_10861

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@А;
,block2_conv1_biasadd_readvariableop_resource:	АG
+block2_conv2_conv2d_readvariableop_resource:АА;
,block2_conv2_biasadd_readvariableop_resource:	АG
+block3_conv1_conv2d_readvariableop_resource:АА;
,block3_conv1_biasadd_readvariableop_resource:	АG
+block3_conv2_conv2d_readvariableop_resource:АА;
,block3_conv2_biasadd_readvariableop_resource:	АG
+block3_conv3_conv2d_readvariableop_resource:АА;
,block3_conv3_biasadd_readvariableop_resource:	АG
+block3_conv4_conv2d_readvariableop_resource:АА;
,block3_conv4_biasadd_readvariableop_resource:	АG
+block4_conv1_conv2d_readvariableop_resource:АА;
,block4_conv1_biasadd_readvariableop_resource:	АG
+block4_conv2_conv2d_readvariableop_resource:АА;
,block4_conv2_biasadd_readvariableop_resource:	АG
+block4_conv3_conv2d_readvariableop_resource:АА;
,block4_conv3_biasadd_readvariableop_resource:	АG
+block4_conv4_conv2d_readvariableop_resource:АА;
,block4_conv4_biasadd_readvariableop_resource:	АG
+block5_conv1_conv2d_readvariableop_resource:АА;
,block5_conv1_biasadd_readvariableop_resource:	АG
+block5_conv2_conv2d_readvariableop_resource:АА;
,block5_conv2_biasadd_readvariableop_resource:	АG
+block5_conv3_conv2d_readvariableop_resource:АА;
,block5_conv3_biasadd_readvariableop_resource:	АG
+block5_conv4_conv2d_readvariableop_resource:АА;
,block5_conv4_biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐ#block1_conv1/BiasAdd/ReadVariableOpҐ"block1_conv1/Conv2D/ReadVariableOpҐ#block1_conv2/BiasAdd/ReadVariableOpҐ"block1_conv2/Conv2D/ReadVariableOpҐ#block2_conv1/BiasAdd/ReadVariableOpҐ"block2_conv1/Conv2D/ReadVariableOpҐ#block2_conv2/BiasAdd/ReadVariableOpҐ"block2_conv2/Conv2D/ReadVariableOpҐ#block3_conv1/BiasAdd/ReadVariableOpҐ"block3_conv1/Conv2D/ReadVariableOpҐ#block3_conv2/BiasAdd/ReadVariableOpҐ"block3_conv2/Conv2D/ReadVariableOpҐ#block3_conv3/BiasAdd/ReadVariableOpҐ"block3_conv3/Conv2D/ReadVariableOpҐ#block3_conv4/BiasAdd/ReadVariableOpҐ"block3_conv4/Conv2D/ReadVariableOpҐ#block4_conv1/BiasAdd/ReadVariableOpҐ"block4_conv1/Conv2D/ReadVariableOpҐ#block4_conv2/BiasAdd/ReadVariableOpҐ"block4_conv2/Conv2D/ReadVariableOpҐ#block4_conv3/BiasAdd/ReadVariableOpҐ"block4_conv3/Conv2D/ReadVariableOpҐ#block4_conv4/BiasAdd/ReadVariableOpҐ"block4_conv4/Conv2D/ReadVariableOpҐ#block5_conv1/BiasAdd/ReadVariableOpҐ"block5_conv1/Conv2D/ReadVariableOpҐ#block5_conv2/BiasAdd/ReadVariableOpҐ"block5_conv2/Conv2D/ReadVariableOpҐ#block5_conv3/BiasAdd/ReadVariableOpҐ"block5_conv3/Conv2D/ReadVariableOpҐ#block5_conv4/BiasAdd/ReadVariableOpҐ"block5_conv4/Conv2D/ReadVariableOpЉ
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOpћ
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2
block1_conv1/Conv2D≥
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOpЊ
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
block1_conv1/BiasAddЙ
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
block1_conv1/ReluЉ
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOpе
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2
block1_conv2/Conv2D≥
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOpЊ
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
block1_conv2/BiasAddЙ
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
block1_conv2/Relu≈
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*1
_output_shapes
:€€€€€€€€€АА@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPoolљ
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02$
"block2_conv1/Conv2D/ReadVariableOpг
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2
block2_conv1/Conv2Dі
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOpњ
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
block2_conv1/BiasAddК
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
block2_conv1/ReluЊ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block2_conv2/Conv2D/ReadVariableOpж
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2
block2_conv2/Conv2Dі
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOpњ
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
block2_conv2/BiasAddК
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
block2_conv2/Reluƒ
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:€€€€€€€€€@@А*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPoolЊ
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv1/Conv2D/ReadVariableOpб
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
block3_conv1/Conv2Dі
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOpљ
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv1/BiasAddИ
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv1/ReluЊ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv2/Conv2D/ReadVariableOpд
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
block3_conv2/Conv2Dі
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOpљ
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv2/BiasAddИ
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv2/ReluЊ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv3/Conv2D/ReadVariableOpд
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
block3_conv3/Conv2Dі
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOpљ
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv3/BiasAddИ
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv3/ReluЊ
"block3_conv4/Conv2D/ReadVariableOpReadVariableOp+block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv4/Conv2D/ReadVariableOpд
block3_conv4/Conv2DConv2Dblock3_conv3/Relu:activations:0*block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
block3_conv4/Conv2Dі
#block3_conv4/BiasAdd/ReadVariableOpReadVariableOp,block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv4/BiasAdd/ReadVariableOpљ
block3_conv4/BiasAddBiasAddblock3_conv4/Conv2D:output:0+block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv4/BiasAddИ
block3_conv4/ReluRelublock3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv4/Reluƒ
block3_pool/MaxPoolMaxPoolblock3_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€  А*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPoolЊ
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv1/Conv2D/ReadVariableOpб
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
block4_conv1/Conv2Dі
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOpљ
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv1/BiasAddИ
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv1/ReluЊ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv2/Conv2D/ReadVariableOpд
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
block4_conv2/Conv2Dі
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOpљ
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv2/BiasAddИ
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv2/ReluЊ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv3/Conv2D/ReadVariableOpд
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
block4_conv3/Conv2Dі
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOpљ
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv3/BiasAddИ
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv3/ReluЊ
"block4_conv4/Conv2D/ReadVariableOpReadVariableOp+block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv4/Conv2D/ReadVariableOpд
block4_conv4/Conv2DConv2Dblock4_conv3/Relu:activations:0*block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
block4_conv4/Conv2Dі
#block4_conv4/BiasAdd/ReadVariableOpReadVariableOp,block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv4/BiasAdd/ReadVariableOpљ
block4_conv4/BiasAddBiasAddblock4_conv4/Conv2D:output:0+block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv4/BiasAddИ
block4_conv4/ReluRelublock4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv4/Reluƒ
block4_pool/MaxPoolMaxPoolblock4_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPoolЊ
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv1/Conv2D/ReadVariableOpб
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv1/Conv2Dі
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOpљ
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv1/BiasAddИ
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv1/ReluЊ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv2/Conv2D/ReadVariableOpд
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv2/Conv2Dі
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOpљ
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv2/BiasAddИ
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv2/ReluЊ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv3/Conv2D/ReadVariableOpд
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv3/Conv2Dі
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOpљ
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv3/BiasAddИ
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv3/ReluЊ
"block5_conv4/Conv2D/ReadVariableOpReadVariableOp+block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv4/Conv2D/ReadVariableOpд
block5_conv4/Conv2DConv2Dblock5_conv3/Relu:activations:0*block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv4/Conv2Dі
#block5_conv4/BiasAdd/ReadVariableOpReadVariableOp,block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv4/BiasAdd/ReadVariableOpљ
block5_conv4/BiasAddBiasAddblock5_conv4/Conv2D:output:0+block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv4/BiasAddИ
block5_conv4/ReluRelublock5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv4/Reluƒ
block5_pool/MaxPoolMaxPoolblock5_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool©

IdentityIdentityblock3_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity≠


Identity_1Identityblock4_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1≠


Identity_2Identityblock5_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block3_conv4/BiasAdd/ReadVariableOp#block3_conv4/BiasAdd/ReadVariableOp2H
"block3_conv4/Conv2D/ReadVariableOp"block3_conv4/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block4_conv4/BiasAdd/ReadVariableOp#block4_conv4/BiasAdd/ReadVariableOp2H
"block4_conv4/Conv2D/ReadVariableOp"block4_conv4/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2J
#block5_conv4/BiasAdd/ReadVariableOp#block5_conv4/BiasAdd/ReadVariableOp2H
"block5_conv4/Conv2D/ReadVariableOp"block5_conv4/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ґ
В
F__inference_block3_conv3_layer_call_and_return_conditional_losses_7665

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€@@А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
Ѕ
t
H__inference_concatenate_2_layer_call_and_return_conditional_losses_11331
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisК
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€А2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:€€€€€€€€€А:l h
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/1
“
§
,__inference_block4_conv3_layer_call_fn_11583

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_77342
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
£
Г
G__inference_block3_conv1_layer_call_and_return_conditional_losses_11454

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€@@А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
Ѓ
c
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_8566

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ќ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul’
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
half_pixel_centers(2
resize/ResizeNearestNeighbor§
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ъ
h
/__inference_block6_dropout2_layer_call_fn_11224

inputs
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_block6_dropout2_layer_call_and_return_conditional_losses_92272
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ьz
Ќ
B__inference_tablenet_layer_call_and_return_conditional_losses_9496

inputs%
vgg_19_9377:@
vgg_19_9379:@%
vgg_19_9381:@@
vgg_19_9383:@&
vgg_19_9385:@А
vgg_19_9387:	А'
vgg_19_9389:АА
vgg_19_9391:	А'
vgg_19_9393:АА
vgg_19_9395:	А'
vgg_19_9397:АА
vgg_19_9399:	А'
vgg_19_9401:АА
vgg_19_9403:	А'
vgg_19_9405:АА
vgg_19_9407:	А'
vgg_19_9409:АА
vgg_19_9411:	А'
vgg_19_9413:АА
vgg_19_9415:	А'
vgg_19_9417:АА
vgg_19_9419:	А'
vgg_19_9421:АА
vgg_19_9423:	А'
vgg_19_9425:АА
vgg_19_9427:	А'
vgg_19_9429:АА
vgg_19_9431:	А'
vgg_19_9433:АА
vgg_19_9435:	А'
vgg_19_9437:АА
vgg_19_9439:	А-
block6_conv1_9444:АА 
block6_conv1_9446:	А-
block6_conv2_9450:АА 
block6_conv2_9452:	А4
block7_conv1_column_9456:АА'
block7_conv1_column_9458:	А4
block8_conv1_column_9462:АА'
block8_conv1_column_9464:	А,
conv7_table_9467:АА
conv7_table_9469:	А-
column_output_9484:А
 
column_output_9486:,
table_output_9489:А

table_output_9491:
identity

identity_1ИҐVGG-19/StatefulPartitionedCallҐ$block6_conv1/StatefulPartitionedCallҐ$block6_conv2/StatefulPartitionedCallҐ'block6_dropout1/StatefulPartitionedCallҐ'block6_dropout2/StatefulPartitionedCallҐ+block7_conv1_column/StatefulPartitionedCallҐ-block7_dropout_column/StatefulPartitionedCallҐ+block8_conv1_column/StatefulPartitionedCallҐ%column_output/StatefulPartitionedCallҐ#conv7_table/StatefulPartitionedCallҐ$table_output/StatefulPartitionedCallМ
VGG-19/StatefulPartitionedCallStatefulPartitionedCallinputsvgg_19_9377vgg_19_9379vgg_19_9381vgg_19_9383vgg_19_9385vgg_19_9387vgg_19_9389vgg_19_9391vgg_19_9393vgg_19_9395vgg_19_9397vgg_19_9399vgg_19_9401vgg_19_9403vgg_19_9405vgg_19_9407vgg_19_9409vgg_19_9411vgg_19_9413vgg_19_9415vgg_19_9417vgg_19_9419vgg_19_9421vgg_19_9423vgg_19_9425vgg_19_9427vgg_19_9429vgg_19_9431vgg_19_9433vgg_19_9435vgg_19_9437vgg_19_9439*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:€€€€€€€€€  А:€€€€€€€€€А:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_VGG-19_layer_call_and_return_conditional_losses_82272 
VGG-19/StatefulPartitionedCallѕ
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall'VGG-19/StatefulPartitionedCall:output:2block6_conv1_9444block6_conv1_9446*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block6_conv1_layer_call_and_return_conditional_losses_88782&
$block6_conv1/StatefulPartitionedCall≤
'block6_dropout1/StatefulPartitionedCallStatefulPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_block6_dropout1_layer_call_and_return_conditional_losses_92602)
'block6_dropout1/StatefulPartitionedCallЎ
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout1/StatefulPartitionedCall:output:0block6_conv2_9450block6_conv2_9452*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block6_conv2_layer_call_and_return_conditional_losses_89022&
$block6_conv2/StatefulPartitionedCall№
'block6_dropout2/StatefulPartitionedCallStatefulPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0(^block6_dropout1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_block6_dropout2_layer_call_and_return_conditional_losses_92272)
'block6_dropout2/StatefulPartitionedCallы
+block7_conv1_column/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout2/StatefulPartitionedCall:output:0block7_conv1_column_9456block7_conv1_column_9458*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_block7_conv1_column_layer_call_and_return_conditional_losses_89262-
+block7_conv1_column/StatefulPartitionedCallх
-block7_dropout_column/StatefulPartitionedCallStatefulPartitionedCall4block7_conv1_column/StatefulPartitionedCall:output:0(^block6_dropout2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block7_dropout_column_layer_call_and_return_conditional_losses_91942/
-block7_dropout_column/StatefulPartitionedCallБ
+block8_conv1_column/StatefulPartitionedCallStatefulPartitionedCall6block7_dropout_column/StatefulPartitionedCall:output:0block8_conv1_column_9462block8_conv1_column_9464*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_block8_conv1_column_layer_call_and_return_conditional_losses_89502-
+block8_conv1_column/StatefulPartitionedCall”
#conv7_table/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout2/StatefulPartitionedCall:output:0conv7_table_9467conv7_table_9469*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv7_table_layer_call_and_return_conditional_losses_89672%
#conv7_table/StatefulPartitionedCall≥
up_sampling2d_4/PartitionedCallPartitionedCall4block8_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_85852!
up_sampling2d_4/PartitionedCall•
up_sampling2d/PartitionedCallPartitionedCall,conv7_table/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_85662
up_sampling2d/PartitionedCallє
concatenate_2/PartitionedCallPartitionedCall(up_sampling2d_4/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_2_layer_call_and_return_conditional_losses_89822
concatenate_2/PartitionedCall±
concatenate/PartitionedCallPartitionedCall&up_sampling2d/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_89912
concatenate/PartitionedCall•
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_86232!
up_sampling2d_5/PartitionedCall£
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_86042!
up_sampling2d_1/PartitionedCallє
concatenate_3/PartitionedCallPartitionedCall(up_sampling2d_5/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_3_layer_call_and_return_conditional_losses_90022
concatenate_3/PartitionedCallє
concatenate_1/PartitionedCallPartitionedCall(up_sampling2d_1/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_90112
concatenate_1/PartitionedCall•
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_86612!
up_sampling2d_6/PartitionedCall•
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_86422!
up_sampling2d_2/PartitionedCallІ
up_sampling2d_7/PartitionedCallPartitionedCall(up_sampling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_86992!
up_sampling2d_7/PartitionedCallІ
up_sampling2d_3/PartitionedCallPartitionedCall(up_sampling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_86802!
up_sampling2d_3/PartitionedCallж
%column_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0column_output_9484column_output_9486*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_column_output_layer_call_and_return_conditional_losses_87832'
%column_output/StatefulPartitionedCallб
$table_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0table_output_9489table_output_9491*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_table_output_layer_call_and_return_conditional_losses_87392&
$table_output/StatefulPartitionedCallя
IdentityIdentity-table_output/StatefulPartitionedCall:output:0^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall(^block6_dropout1/StatefulPartitionedCall(^block6_dropout2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall.^block7_dropout_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identityд

Identity_1Identity.column_output/StatefulPartitionedCall:output:0^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall(^block6_dropout1/StatefulPartitionedCall(^block6_dropout2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall.^block7_dropout_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
VGG-19/StatefulPartitionedCallVGG-19/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2R
'block6_dropout1/StatefulPartitionedCall'block6_dropout1/StatefulPartitionedCall2R
'block6_dropout2/StatefulPartitionedCall'block6_dropout2/StatefulPartitionedCall2Z
+block7_conv1_column/StatefulPartitionedCall+block7_conv1_column/StatefulPartitionedCall2^
-block7_dropout_column/StatefulPartitionedCall-block7_dropout_column/StatefulPartitionedCall2Z
+block8_conv1_column/StatefulPartitionedCall+block8_conv1_column/StatefulPartitionedCall2N
%column_output/StatefulPartitionedCall%column_output/StatefulPartitionedCall2J
#conv7_table/StatefulPartitionedCall#conv7_table/StatefulPartitionedCall2L
$table_output/StatefulPartitionedCall$table_output/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ќ
F
*__inference_block1_pool_layer_call_fn_7495

inputs
identityй
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_74892
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
÷
J
.__inference_up_sampling2d_3_layer_call_fn_8686

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_86802
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
t
H__inference_concatenate_1_layer_call_and_return_conditional_losses_11344
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisК
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  А
2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:€€€€€€€€€  А:l h
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:€€€€€€€€€  А
"
_user_specified_name
inputs/1
ћs
…
B__inference_tablenet_layer_call_and_return_conditional_losses_9029

inputs%
vgg_19_8800:@
vgg_19_8802:@%
vgg_19_8804:@@
vgg_19_8806:@&
vgg_19_8808:@А
vgg_19_8810:	А'
vgg_19_8812:АА
vgg_19_8814:	А'
vgg_19_8816:АА
vgg_19_8818:	А'
vgg_19_8820:АА
vgg_19_8822:	А'
vgg_19_8824:АА
vgg_19_8826:	А'
vgg_19_8828:АА
vgg_19_8830:	А'
vgg_19_8832:АА
vgg_19_8834:	А'
vgg_19_8836:АА
vgg_19_8838:	А'
vgg_19_8840:АА
vgg_19_8842:	А'
vgg_19_8844:АА
vgg_19_8846:	А'
vgg_19_8848:АА
vgg_19_8850:	А'
vgg_19_8852:АА
vgg_19_8854:	А'
vgg_19_8856:АА
vgg_19_8858:	А'
vgg_19_8860:АА
vgg_19_8862:	А-
block6_conv1_8879:АА 
block6_conv1_8881:	А-
block6_conv2_8903:АА 
block6_conv2_8905:	А4
block7_conv1_column_8927:АА'
block7_conv1_column_8929:	А4
block8_conv1_column_8951:АА'
block8_conv1_column_8953:	А,
conv7_table_8968:АА
conv7_table_8970:	А-
column_output_9017:А
 
column_output_9019:,
table_output_9022:А

table_output_9024:
identity

identity_1ИҐVGG-19/StatefulPartitionedCallҐ$block6_conv1/StatefulPartitionedCallҐ$block6_conv2/StatefulPartitionedCallҐ+block7_conv1_column/StatefulPartitionedCallҐ+block8_conv1_column/StatefulPartitionedCallҐ%column_output/StatefulPartitionedCallҐ#conv7_table/StatefulPartitionedCallҐ$table_output/StatefulPartitionedCallМ
VGG-19/StatefulPartitionedCallStatefulPartitionedCallinputsvgg_19_8800vgg_19_8802vgg_19_8804vgg_19_8806vgg_19_8808vgg_19_8810vgg_19_8812vgg_19_8814vgg_19_8816vgg_19_8818vgg_19_8820vgg_19_8822vgg_19_8824vgg_19_8826vgg_19_8828vgg_19_8830vgg_19_8832vgg_19_8834vgg_19_8836vgg_19_8838vgg_19_8840vgg_19_8842vgg_19_8844vgg_19_8846vgg_19_8848vgg_19_8850vgg_19_8852vgg_19_8854vgg_19_8856vgg_19_8858vgg_19_8860vgg_19_8862*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:€€€€€€€€€  А:€€€€€€€€€А:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_VGG-19_layer_call_and_return_conditional_losses_78302 
VGG-19/StatefulPartitionedCallѕ
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall'VGG-19/StatefulPartitionedCall:output:2block6_conv1_8879block6_conv1_8881*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block6_conv1_layer_call_and_return_conditional_losses_88782&
$block6_conv1/StatefulPartitionedCallЪ
block6_dropout1/PartitionedCallPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_block6_dropout1_layer_call_and_return_conditional_losses_88892!
block6_dropout1/PartitionedCall–
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout1/PartitionedCall:output:0block6_conv2_8903block6_conv2_8905*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block6_conv2_layer_call_and_return_conditional_losses_89022&
$block6_conv2/StatefulPartitionedCallЪ
block6_dropout2/PartitionedCallPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_block6_dropout2_layer_call_and_return_conditional_losses_89132!
block6_dropout2/PartitionedCallу
+block7_conv1_column/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout2/PartitionedCall:output:0block7_conv1_column_8927block7_conv1_column_8929*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_block7_conv1_column_layer_call_and_return_conditional_losses_89262-
+block7_conv1_column/StatefulPartitionedCall≥
%block7_dropout_column/PartitionedCallPartitionedCall4block7_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block7_dropout_column_layer_call_and_return_conditional_losses_89372'
%block7_dropout_column/PartitionedCallщ
+block8_conv1_column/StatefulPartitionedCallStatefulPartitionedCall.block7_dropout_column/PartitionedCall:output:0block8_conv1_column_8951block8_conv1_column_8953*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_block8_conv1_column_layer_call_and_return_conditional_losses_89502-
+block8_conv1_column/StatefulPartitionedCallЋ
#conv7_table/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout2/PartitionedCall:output:0conv7_table_8968conv7_table_8970*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv7_table_layer_call_and_return_conditional_losses_89672%
#conv7_table/StatefulPartitionedCall≥
up_sampling2d_4/PartitionedCallPartitionedCall4block8_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_85852!
up_sampling2d_4/PartitionedCall•
up_sampling2d/PartitionedCallPartitionedCall,conv7_table/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_85662
up_sampling2d/PartitionedCallє
concatenate_2/PartitionedCallPartitionedCall(up_sampling2d_4/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_2_layer_call_and_return_conditional_losses_89822
concatenate_2/PartitionedCall±
concatenate/PartitionedCallPartitionedCall&up_sampling2d/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_89912
concatenate/PartitionedCall•
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_86232!
up_sampling2d_5/PartitionedCall£
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_86042!
up_sampling2d_1/PartitionedCallє
concatenate_3/PartitionedCallPartitionedCall(up_sampling2d_5/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_3_layer_call_and_return_conditional_losses_90022
concatenate_3/PartitionedCallє
concatenate_1/PartitionedCallPartitionedCall(up_sampling2d_1/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_90112
concatenate_1/PartitionedCall•
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_86612!
up_sampling2d_6/PartitionedCall•
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_86422!
up_sampling2d_2/PartitionedCallІ
up_sampling2d_7/PartitionedCallPartitionedCall(up_sampling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_86992!
up_sampling2d_7/PartitionedCallІ
up_sampling2d_3/PartitionedCallPartitionedCall(up_sampling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_86802!
up_sampling2d_3/PartitionedCallж
%column_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0column_output_9017column_output_9019*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_column_output_layer_call_and_return_conditional_losses_87832'
%column_output/StatefulPartitionedCallб
$table_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0table_output_9022table_output_9024*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_table_output_layer_call_and_return_conditional_losses_87392&
$table_output/StatefulPartitionedCallџ
IdentityIdentity-table_output/StatefulPartitionedCall:output:0^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identityа

Identity_1Identity.column_output/StatefulPartitionedCall:output:0^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
VGG-19/StatefulPartitionedCallVGG-19/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2Z
+block7_conv1_column/StatefulPartitionedCall+block7_conv1_column/StatefulPartitionedCall2Z
+block8_conv1_column/StatefulPartitionedCall+block8_conv1_column/StatefulPartitionedCall2N
%column_output/StatefulPartitionedCall%column_output/StatefulPartitionedCall2J
#conv7_table/StatefulPartitionedCall#conv7_table/StatefulPartitionedCall2L
$table_output/StatefulPartitionedCall$table_output/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
÷
J
.__inference_up_sampling2d_7_layer_call_fn_8705

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_86992
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
£
Г
G__inference_block5_conv3_layer_call_and_return_conditional_losses_11654

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ќ
F
*__inference_block4_pool_layer_call_fn_7531

inputs
identityй
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_75252
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
“
§
,__inference_block4_conv4_layer_call_fn_11603

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv4_layer_call_and_return_conditional_losses_77512
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
щ
Ў
#__inference_signature_wrapper_10043	
input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::€€€€€€€€€АА:€€€€€€€€€АА*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__wrapped_model_74832
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:€€€€€€€€€АА2

IdentityЬ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:€€€€€€€€€АА

_user_specified_nameinput
Ґ
В
F__inference_block4_conv1_layer_call_and_return_conditional_losses_7700

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
щ
h
I__inference_block6_dropout2_layer_call_and_return_conditional_losses_9227

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †@2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeљ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?2
dropout/GreaterEqual/y«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
”
°
,__inference_block1_conv1_layer_call_fn_11383

inputs!
unknown:@
	unknown_0:@
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_75612
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:€€€€€€€€€АА@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
д
ё
(__inference_tablenet_layer_call_fn_10639

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИҐStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_tablenet_layer_call_and_return_conditional_losses_90292
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identityђ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ч
Ґ
,__inference_column_output_layer_call_fn_8793

inputs"
unknown:А

	unknown_0:
identityИҐStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_column_output_layer_call_and_return_conditional_losses_87832
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А

 
_user_specified_nameinputs
Ґ
€
F__inference_block1_conv2_layer_call_and_return_conditional_losses_7578

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
Relu°
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€АА@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА@
 
_user_specified_nameinputs
Ґ
В
F__inference_block3_conv2_layer_call_and_return_conditional_losses_7648

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€@@А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
њ
r
F__inference_concatenate_layer_call_and_return_conditional_losses_11318
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisК
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€А2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:€€€€€€€€€А:l h
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/1
Є
q
G__inference_concatenate_2_layer_call_and_return_conditional_losses_8982

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisИ
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€А2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:€€€€€€€€€А:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs:XT
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ґ
В
F__inference_block5_conv1_layer_call_and_return_conditional_losses_7769

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ѓx
щ
@__inference_VGG-19_layer_call_and_return_conditional_losses_8462
input_1+
block1_conv1_8374:@
block1_conv1_8376:@+
block1_conv2_8379:@@
block1_conv2_8381:@,
block2_conv1_8385:@А 
block2_conv1_8387:	А-
block2_conv2_8390:АА 
block2_conv2_8392:	А-
block3_conv1_8396:АА 
block3_conv1_8398:	А-
block3_conv2_8401:АА 
block3_conv2_8403:	А-
block3_conv3_8406:АА 
block3_conv3_8408:	А-
block3_conv4_8411:АА 
block3_conv4_8413:	А-
block4_conv1_8417:АА 
block4_conv1_8419:	А-
block4_conv2_8422:АА 
block4_conv2_8424:	А-
block4_conv3_8427:АА 
block4_conv3_8429:	А-
block4_conv4_8432:АА 
block4_conv4_8434:	А-
block5_conv1_8438:АА 
block5_conv1_8440:	А-
block5_conv2_8443:АА 
block5_conv2_8445:	А-
block5_conv3_8448:АА 
block5_conv3_8450:	А-
block5_conv4_8453:АА 
block5_conv4_8455:	А
identity

identity_1

identity_2ИҐ$block1_conv1/StatefulPartitionedCallҐ$block1_conv2/StatefulPartitionedCallҐ$block2_conv1/StatefulPartitionedCallҐ$block2_conv2/StatefulPartitionedCallҐ$block3_conv1/StatefulPartitionedCallҐ$block3_conv2/StatefulPartitionedCallҐ$block3_conv3/StatefulPartitionedCallҐ$block3_conv4/StatefulPartitionedCallҐ$block4_conv1/StatefulPartitionedCallҐ$block4_conv2/StatefulPartitionedCallҐ$block4_conv3/StatefulPartitionedCallҐ$block4_conv4/StatefulPartitionedCallҐ$block5_conv1/StatefulPartitionedCallҐ$block5_conv2/StatefulPartitionedCallҐ$block5_conv3/StatefulPartitionedCallҐ$block5_conv4/StatefulPartitionedCall∞
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_8374block1_conv1_8376*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_75612&
$block1_conv1/StatefulPartitionedCall÷
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_8379block1_conv2_8381*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_75782&
$block1_conv2/StatefulPartitionedCallП
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_74892
block1_pool/PartitionedCallќ
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_8385block2_conv1_8387*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_75962&
$block2_conv1/StatefulPartitionedCall„
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_8390block2_conv2_8392*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_76132&
$block2_conv2/StatefulPartitionedCallО
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_75012
block2_pool/PartitionedCallћ
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_8396block3_conv1_8398*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_76312&
$block3_conv1/StatefulPartitionedCall’
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_8401block3_conv2_8403*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_76482&
$block3_conv2/StatefulPartitionedCall’
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_8406block3_conv3_8408*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_76652&
$block3_conv3/StatefulPartitionedCall’
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_8411block3_conv4_8413*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv4_layer_call_and_return_conditional_losses_76822&
$block3_conv4/StatefulPartitionedCallО
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_75132
block3_pool/PartitionedCallћ
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_8417block4_conv1_8419*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_77002&
$block4_conv1/StatefulPartitionedCall’
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_8422block4_conv2_8424*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_77172&
$block4_conv2/StatefulPartitionedCall’
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_8427block4_conv3_8429*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_77342&
$block4_conv3/StatefulPartitionedCall’
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_8432block4_conv4_8434*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv4_layer_call_and_return_conditional_losses_77512&
$block4_conv4/StatefulPartitionedCallО
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_75252
block4_pool/PartitionedCallћ
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_8438block5_conv1_8440*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_77692&
$block5_conv1/StatefulPartitionedCall’
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_8443block5_conv2_8445*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_77862&
$block5_conv2/StatefulPartitionedCall’
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_8448block5_conv3_8450*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_78032&
$block5_conv3/StatefulPartitionedCall’
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_8453block5_conv4_8455*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv4_layer_call_and_return_conditional_losses_78202&
$block5_conv4/StatefulPartitionedCallО
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_75372
block5_pool/PartitionedCallс
IdentityIdentity$block3_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identityх

Identity_1Identity$block4_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1х

Identity_2Identity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€АА
!
_user_specified_name	input_1
£
Г
G__inference_block4_conv3_layer_call_and_return_conditional_losses_11574

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
•
a
E__inference_block3_pool_layer_call_and_return_conditional_losses_7513

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
иЋ
е0
__inference__wrapped_model_7483	
inputU
;tablenet_vgg_19_block1_conv1_conv2d_readvariableop_resource:@J
<tablenet_vgg_19_block1_conv1_biasadd_readvariableop_resource:@U
;tablenet_vgg_19_block1_conv2_conv2d_readvariableop_resource:@@J
<tablenet_vgg_19_block1_conv2_biasadd_readvariableop_resource:@V
;tablenet_vgg_19_block2_conv1_conv2d_readvariableop_resource:@АK
<tablenet_vgg_19_block2_conv1_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block2_conv2_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block2_conv2_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block3_conv1_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block3_conv1_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block3_conv2_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block3_conv2_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block3_conv3_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block3_conv3_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block3_conv4_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block3_conv4_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block4_conv1_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block4_conv1_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block4_conv2_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block4_conv2_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block4_conv3_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block4_conv3_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block4_conv4_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block4_conv4_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block5_conv1_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block5_conv1_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block5_conv2_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block5_conv2_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block5_conv3_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block5_conv3_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block5_conv4_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block5_conv4_biasadd_readvariableop_resource:	АP
4tablenet_block6_conv1_conv2d_readvariableop_resource:ААD
5tablenet_block6_conv1_biasadd_readvariableop_resource:	АP
4tablenet_block6_conv2_conv2d_readvariableop_resource:ААD
5tablenet_block6_conv2_biasadd_readvariableop_resource:	АW
;tablenet_block7_conv1_column_conv2d_readvariableop_resource:ААK
<tablenet_block7_conv1_column_biasadd_readvariableop_resource:	АW
;tablenet_block8_conv1_column_conv2d_readvariableop_resource:ААK
<tablenet_block8_conv1_column_biasadd_readvariableop_resource:	АO
3tablenet_conv7_table_conv2d_readvariableop_resource:ААC
4tablenet_conv7_table_biasadd_readvariableop_resource:	АZ
?tablenet_column_output_conv2d_transpose_readvariableop_resource:А
D
6tablenet_column_output_biasadd_readvariableop_resource:Y
>tablenet_table_output_conv2d_transpose_readvariableop_resource:А
C
5tablenet_table_output_biasadd_readvariableop_resource:
identity

identity_1ИҐ3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOpҐ3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOpҐ2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOpҐ,tablenet/block6_conv1/BiasAdd/ReadVariableOpҐ+tablenet/block6_conv1/Conv2D/ReadVariableOpҐ,tablenet/block6_conv2/BiasAdd/ReadVariableOpҐ+tablenet/block6_conv2/Conv2D/ReadVariableOpҐ3tablenet/block7_conv1_column/BiasAdd/ReadVariableOpҐ2tablenet/block7_conv1_column/Conv2D/ReadVariableOpҐ3tablenet/block8_conv1_column/BiasAdd/ReadVariableOpҐ2tablenet/block8_conv1_column/Conv2D/ReadVariableOpҐ-tablenet/column_output/BiasAdd/ReadVariableOpҐ6tablenet/column_output/conv2d_transpose/ReadVariableOpҐ+tablenet/conv7_table/BiasAdd/ReadVariableOpҐ*tablenet/conv7_table/Conv2D/ReadVariableOpҐ,tablenet/table_output/BiasAdd/ReadVariableOpҐ5tablenet/table_output/conv2d_transpose/ReadVariableOpм
2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype024
2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOpы
#tablenet/VGG-19/block1_conv1/Conv2DConv2Dinput:tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2%
#tablenet/VGG-19/block1_conv1/Conv2Dг
3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype025
3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOpю
$tablenet/VGG-19/block1_conv1/BiasAddBiasAdd,tablenet/VGG-19/block1_conv1/Conv2D:output:0;tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2&
$tablenet/VGG-19/block1_conv1/BiasAddє
!tablenet/VGG-19/block1_conv1/ReluRelu-tablenet/VGG-19/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2#
!tablenet/VGG-19/block1_conv1/Reluм
2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype024
2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp•
#tablenet/VGG-19/block1_conv2/Conv2DConv2D/tablenet/VGG-19/block1_conv1/Relu:activations:0:tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2%
#tablenet/VGG-19/block1_conv2/Conv2Dг
3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype025
3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOpю
$tablenet/VGG-19/block1_conv2/BiasAddBiasAdd,tablenet/VGG-19/block1_conv2/Conv2D:output:0;tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2&
$tablenet/VGG-19/block1_conv2/BiasAddє
!tablenet/VGG-19/block1_conv2/ReluRelu-tablenet/VGG-19/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2#
!tablenet/VGG-19/block1_conv2/Reluх
#tablenet/VGG-19/block1_pool/MaxPoolMaxPool/tablenet/VGG-19/block1_conv2/Relu:activations:0*1
_output_shapes
:€€€€€€€€€АА@*
ksize
*
paddingVALID*
strides
2%
#tablenet/VGG-19/block1_pool/MaxPoolн
2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype024
2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp£
#tablenet/VGG-19/block2_conv1/Conv2DConv2D,tablenet/VGG-19/block1_pool/MaxPool:output:0:tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2%
#tablenet/VGG-19/block2_conv1/Conv2Dд
3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp€
$tablenet/VGG-19/block2_conv1/BiasAddBiasAdd,tablenet/VGG-19/block2_conv1/Conv2D:output:0;tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2&
$tablenet/VGG-19/block2_conv1/BiasAddЇ
!tablenet/VGG-19/block2_conv1/ReluRelu-tablenet/VGG-19/block2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2#
!tablenet/VGG-19/block2_conv1/Reluо
2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp¶
#tablenet/VGG-19/block2_conv2/Conv2DConv2D/tablenet/VGG-19/block2_conv1/Relu:activations:0:tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2%
#tablenet/VGG-19/block2_conv2/Conv2Dд
3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp€
$tablenet/VGG-19/block2_conv2/BiasAddBiasAdd,tablenet/VGG-19/block2_conv2/Conv2D:output:0;tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2&
$tablenet/VGG-19/block2_conv2/BiasAddЇ
!tablenet/VGG-19/block2_conv2/ReluRelu-tablenet/VGG-19/block2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2#
!tablenet/VGG-19/block2_conv2/Reluф
#tablenet/VGG-19/block2_pool/MaxPoolMaxPool/tablenet/VGG-19/block2_conv2/Relu:activations:0*0
_output_shapes
:€€€€€€€€€@@А*
ksize
*
paddingVALID*
strides
2%
#tablenet/VGG-19/block2_pool/MaxPoolо
2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp°
#tablenet/VGG-19/block3_conv1/Conv2DConv2D,tablenet/VGG-19/block2_pool/MaxPool:output:0:tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2%
#tablenet/VGG-19/block3_conv1/Conv2Dд
3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOpэ
$tablenet/VGG-19/block3_conv1/BiasAddBiasAdd,tablenet/VGG-19/block3_conv1/Conv2D:output:0;tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2&
$tablenet/VGG-19/block3_conv1/BiasAddЄ
!tablenet/VGG-19/block3_conv1/ReluRelu-tablenet/VGG-19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2#
!tablenet/VGG-19/block3_conv1/Reluо
2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp§
#tablenet/VGG-19/block3_conv2/Conv2DConv2D/tablenet/VGG-19/block3_conv1/Relu:activations:0:tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2%
#tablenet/VGG-19/block3_conv2/Conv2Dд
3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOpэ
$tablenet/VGG-19/block3_conv2/BiasAddBiasAdd,tablenet/VGG-19/block3_conv2/Conv2D:output:0;tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2&
$tablenet/VGG-19/block3_conv2/BiasAddЄ
!tablenet/VGG-19/block3_conv2/ReluRelu-tablenet/VGG-19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2#
!tablenet/VGG-19/block3_conv2/Reluо
2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp§
#tablenet/VGG-19/block3_conv3/Conv2DConv2D/tablenet/VGG-19/block3_conv2/Relu:activations:0:tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2%
#tablenet/VGG-19/block3_conv3/Conv2Dд
3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOpэ
$tablenet/VGG-19/block3_conv3/BiasAddBiasAdd,tablenet/VGG-19/block3_conv3/Conv2D:output:0;tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2&
$tablenet/VGG-19/block3_conv3/BiasAddЄ
!tablenet/VGG-19/block3_conv3/ReluRelu-tablenet/VGG-19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2#
!tablenet/VGG-19/block3_conv3/Reluо
2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp§
#tablenet/VGG-19/block3_conv4/Conv2DConv2D/tablenet/VGG-19/block3_conv3/Relu:activations:0:tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2%
#tablenet/VGG-19/block3_conv4/Conv2Dд
3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOpэ
$tablenet/VGG-19/block3_conv4/BiasAddBiasAdd,tablenet/VGG-19/block3_conv4/Conv2D:output:0;tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2&
$tablenet/VGG-19/block3_conv4/BiasAddЄ
!tablenet/VGG-19/block3_conv4/ReluRelu-tablenet/VGG-19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2#
!tablenet/VGG-19/block3_conv4/Reluф
#tablenet/VGG-19/block3_pool/MaxPoolMaxPool/tablenet/VGG-19/block3_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€  А*
ksize
*
paddingVALID*
strides
2%
#tablenet/VGG-19/block3_pool/MaxPoolо
2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp°
#tablenet/VGG-19/block4_conv1/Conv2DConv2D,tablenet/VGG-19/block3_pool/MaxPool:output:0:tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2%
#tablenet/VGG-19/block4_conv1/Conv2Dд
3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOpэ
$tablenet/VGG-19/block4_conv1/BiasAddBiasAdd,tablenet/VGG-19/block4_conv1/Conv2D:output:0;tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2&
$tablenet/VGG-19/block4_conv1/BiasAddЄ
!tablenet/VGG-19/block4_conv1/ReluRelu-tablenet/VGG-19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2#
!tablenet/VGG-19/block4_conv1/Reluо
2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp§
#tablenet/VGG-19/block4_conv2/Conv2DConv2D/tablenet/VGG-19/block4_conv1/Relu:activations:0:tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2%
#tablenet/VGG-19/block4_conv2/Conv2Dд
3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOpэ
$tablenet/VGG-19/block4_conv2/BiasAddBiasAdd,tablenet/VGG-19/block4_conv2/Conv2D:output:0;tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2&
$tablenet/VGG-19/block4_conv2/BiasAddЄ
!tablenet/VGG-19/block4_conv2/ReluRelu-tablenet/VGG-19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2#
!tablenet/VGG-19/block4_conv2/Reluо
2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp§
#tablenet/VGG-19/block4_conv3/Conv2DConv2D/tablenet/VGG-19/block4_conv2/Relu:activations:0:tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2%
#tablenet/VGG-19/block4_conv3/Conv2Dд
3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOpэ
$tablenet/VGG-19/block4_conv3/BiasAddBiasAdd,tablenet/VGG-19/block4_conv3/Conv2D:output:0;tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2&
$tablenet/VGG-19/block4_conv3/BiasAddЄ
!tablenet/VGG-19/block4_conv3/ReluRelu-tablenet/VGG-19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2#
!tablenet/VGG-19/block4_conv3/Reluо
2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp§
#tablenet/VGG-19/block4_conv4/Conv2DConv2D/tablenet/VGG-19/block4_conv3/Relu:activations:0:tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2%
#tablenet/VGG-19/block4_conv4/Conv2Dд
3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOpэ
$tablenet/VGG-19/block4_conv4/BiasAddBiasAdd,tablenet/VGG-19/block4_conv4/Conv2D:output:0;tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2&
$tablenet/VGG-19/block4_conv4/BiasAddЄ
!tablenet/VGG-19/block4_conv4/ReluRelu-tablenet/VGG-19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2#
!tablenet/VGG-19/block4_conv4/Reluф
#tablenet/VGG-19/block4_pool/MaxPoolMaxPool/tablenet/VGG-19/block4_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2%
#tablenet/VGG-19/block4_pool/MaxPoolо
2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp°
#tablenet/VGG-19/block5_conv1/Conv2DConv2D,tablenet/VGG-19/block4_pool/MaxPool:output:0:tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2%
#tablenet/VGG-19/block5_conv1/Conv2Dд
3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOpэ
$tablenet/VGG-19/block5_conv1/BiasAddBiasAdd,tablenet/VGG-19/block5_conv1/Conv2D:output:0;tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2&
$tablenet/VGG-19/block5_conv1/BiasAddЄ
!tablenet/VGG-19/block5_conv1/ReluRelu-tablenet/VGG-19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2#
!tablenet/VGG-19/block5_conv1/Reluо
2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp§
#tablenet/VGG-19/block5_conv2/Conv2DConv2D/tablenet/VGG-19/block5_conv1/Relu:activations:0:tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2%
#tablenet/VGG-19/block5_conv2/Conv2Dд
3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOpэ
$tablenet/VGG-19/block5_conv2/BiasAddBiasAdd,tablenet/VGG-19/block5_conv2/Conv2D:output:0;tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2&
$tablenet/VGG-19/block5_conv2/BiasAddЄ
!tablenet/VGG-19/block5_conv2/ReluRelu-tablenet/VGG-19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2#
!tablenet/VGG-19/block5_conv2/Reluо
2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp§
#tablenet/VGG-19/block5_conv3/Conv2DConv2D/tablenet/VGG-19/block5_conv2/Relu:activations:0:tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2%
#tablenet/VGG-19/block5_conv3/Conv2Dд
3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOpэ
$tablenet/VGG-19/block5_conv3/BiasAddBiasAdd,tablenet/VGG-19/block5_conv3/Conv2D:output:0;tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2&
$tablenet/VGG-19/block5_conv3/BiasAddЄ
!tablenet/VGG-19/block5_conv3/ReluRelu-tablenet/VGG-19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2#
!tablenet/VGG-19/block5_conv3/Reluо
2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp§
#tablenet/VGG-19/block5_conv4/Conv2DConv2D/tablenet/VGG-19/block5_conv3/Relu:activations:0:tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2%
#tablenet/VGG-19/block5_conv4/Conv2Dд
3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOpэ
$tablenet/VGG-19/block5_conv4/BiasAddBiasAdd,tablenet/VGG-19/block5_conv4/Conv2D:output:0;tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2&
$tablenet/VGG-19/block5_conv4/BiasAddЄ
!tablenet/VGG-19/block5_conv4/ReluRelu-tablenet/VGG-19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2#
!tablenet/VGG-19/block5_conv4/Reluф
#tablenet/VGG-19/block5_pool/MaxPoolMaxPool/tablenet/VGG-19/block5_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2%
#tablenet/VGG-19/block5_pool/MaxPoolў
+tablenet/block6_conv1/Conv2D/ReadVariableOpReadVariableOp4tablenet_block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02-
+tablenet/block6_conv1/Conv2D/ReadVariableOpН
tablenet/block6_conv1/Conv2DConv2D,tablenet/VGG-19/block5_pool/MaxPool:output:03tablenet/block6_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
tablenet/block6_conv1/Conv2Dѕ
,tablenet/block6_conv1/BiasAdd/ReadVariableOpReadVariableOp5tablenet_block6_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,tablenet/block6_conv1/BiasAdd/ReadVariableOpб
tablenet/block6_conv1/BiasAddBiasAdd%tablenet/block6_conv1/Conv2D:output:04tablenet/block6_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
tablenet/block6_conv1/BiasAdd£
tablenet/block6_conv1/ReluRelu&tablenet/block6_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
tablenet/block6_conv1/ReluЈ
!tablenet/block6_dropout1/IdentityIdentity(tablenet/block6_conv1/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А2#
!tablenet/block6_dropout1/Identityў
+tablenet/block6_conv2/Conv2D/ReadVariableOpReadVariableOp4tablenet_block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02-
+tablenet/block6_conv2/Conv2D/ReadVariableOpЛ
tablenet/block6_conv2/Conv2DConv2D*tablenet/block6_dropout1/Identity:output:03tablenet/block6_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
tablenet/block6_conv2/Conv2Dѕ
,tablenet/block6_conv2/BiasAdd/ReadVariableOpReadVariableOp5tablenet_block6_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,tablenet/block6_conv2/BiasAdd/ReadVariableOpб
tablenet/block6_conv2/BiasAddBiasAdd%tablenet/block6_conv2/Conv2D:output:04tablenet/block6_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
tablenet/block6_conv2/BiasAdd£
tablenet/block6_conv2/ReluRelu&tablenet/block6_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
tablenet/block6_conv2/ReluЈ
!tablenet/block6_dropout2/IdentityIdentity(tablenet/block6_conv2/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А2#
!tablenet/block6_dropout2/Identityо
2tablenet/block7_conv1_column/Conv2D/ReadVariableOpReadVariableOp;tablenet_block7_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/block7_conv1_column/Conv2D/ReadVariableOp†
#tablenet/block7_conv1_column/Conv2DConv2D*tablenet/block6_dropout2/Identity:output:0:tablenet/block7_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2%
#tablenet/block7_conv1_column/Conv2Dд
3tablenet/block7_conv1_column/BiasAdd/ReadVariableOpReadVariableOp<tablenet_block7_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/block7_conv1_column/BiasAdd/ReadVariableOpэ
$tablenet/block7_conv1_column/BiasAddBiasAdd,tablenet/block7_conv1_column/Conv2D:output:0;tablenet/block7_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2&
$tablenet/block7_conv1_column/BiasAddЄ
!tablenet/block7_conv1_column/ReluRelu-tablenet/block7_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2#
!tablenet/block7_conv1_column/Relu 
'tablenet/block7_dropout_column/IdentityIdentity/tablenet/block7_conv1_column/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А2)
'tablenet/block7_dropout_column/Identityо
2tablenet/block8_conv1_column/Conv2D/ReadVariableOpReadVariableOp;tablenet_block8_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype024
2tablenet/block8_conv1_column/Conv2D/ReadVariableOp¶
#tablenet/block8_conv1_column/Conv2DConv2D0tablenet/block7_dropout_column/Identity:output:0:tablenet/block8_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2%
#tablenet/block8_conv1_column/Conv2Dд
3tablenet/block8_conv1_column/BiasAdd/ReadVariableOpReadVariableOp<tablenet_block8_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3tablenet/block8_conv1_column/BiasAdd/ReadVariableOpэ
$tablenet/block8_conv1_column/BiasAddBiasAdd,tablenet/block8_conv1_column/Conv2D:output:0;tablenet/block8_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2&
$tablenet/block8_conv1_column/BiasAddЄ
!tablenet/block8_conv1_column/ReluRelu-tablenet/block8_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2#
!tablenet/block8_conv1_column/Relu÷
*tablenet/conv7_table/Conv2D/ReadVariableOpReadVariableOp3tablenet_conv7_table_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02,
*tablenet/conv7_table/Conv2D/ReadVariableOpИ
tablenet/conv7_table/Conv2DConv2D*tablenet/block6_dropout2/Identity:output:02tablenet/conv7_table/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
tablenet/conv7_table/Conv2Dћ
+tablenet/conv7_table/BiasAdd/ReadVariableOpReadVariableOp4tablenet_conv7_table_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+tablenet/conv7_table/BiasAdd/ReadVariableOpЁ
tablenet/conv7_table/BiasAddBiasAdd$tablenet/conv7_table/Conv2D:output:03tablenet/conv7_table/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
tablenet/conv7_table/BiasAdd†
tablenet/conv7_table/ReluRelu%tablenet/conv7_table/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
tablenet/conv7_table/ReluС
tablenet/up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2 
tablenet/up_sampling2d_4/ConstХ
 tablenet/up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 tablenet/up_sampling2d_4/Const_1Љ
tablenet/up_sampling2d_4/mulMul'tablenet/up_sampling2d_4/Const:output:0)tablenet/up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:2
tablenet/up_sampling2d_4/mulѓ
5tablenet/up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor/tablenet/block8_conv1_column/Relu:activations:0 tablenet/up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€А*
half_pixel_centers(27
5tablenet/up_sampling2d_4/resize/ResizeNearestNeighborН
tablenet/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
tablenet/up_sampling2d/ConstС
tablenet/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2 
tablenet/up_sampling2d/Const_1і
tablenet/up_sampling2d/mulMul%tablenet/up_sampling2d/Const:output:0'tablenet/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
tablenet/up_sampling2d/mul°
3tablenet/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor'tablenet/conv7_table/Relu:activations:0tablenet/up_sampling2d/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€А*
half_pixel_centers(25
3tablenet/up_sampling2d/resize/ResizeNearestNeighborК
"tablenet/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"tablenet/concatenate_2/concat/axis±
tablenet/concatenate_2/concatConcatV2Ftablenet/up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0,tablenet/VGG-19/block4_pool/MaxPool:output:0+tablenet/concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€А2
tablenet/concatenate_2/concatЖ
 tablenet/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 tablenet/concatenate/concat/axis©
tablenet/concatenate/concatConcatV2Dtablenet/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0,tablenet/VGG-19/block4_pool/MaxPool:output:0)tablenet/concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€А2
tablenet/concatenate/concatС
tablenet/up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2 
tablenet/up_sampling2d_5/ConstХ
 tablenet/up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 tablenet/up_sampling2d_5/Const_1Љ
tablenet/up_sampling2d_5/mulMul'tablenet/up_sampling2d_5/Const:output:0)tablenet/up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:2
tablenet/up_sampling2d_5/mul¶
5tablenet/up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighbor&tablenet/concatenate_2/concat:output:0 tablenet/up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
half_pixel_centers(27
5tablenet/up_sampling2d_5/resize/ResizeNearestNeighborС
tablenet/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2 
tablenet/up_sampling2d_1/ConstХ
 tablenet/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 tablenet/up_sampling2d_1/Const_1Љ
tablenet/up_sampling2d_1/mulMul'tablenet/up_sampling2d_1/Const:output:0)tablenet/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
tablenet/up_sampling2d_1/mul§
5tablenet/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor$tablenet/concatenate/concat:output:0 tablenet/up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
half_pixel_centers(27
5tablenet/up_sampling2d_1/resize/ResizeNearestNeighborК
"tablenet/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"tablenet/concatenate_3/concat/axis±
tablenet/concatenate_3/concatConcatV2Ftablenet/up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0,tablenet/VGG-19/block3_pool/MaxPool:output:0+tablenet/concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  А
2
tablenet/concatenate_3/concatК
"tablenet/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"tablenet/concatenate_1/concat/axis±
tablenet/concatenate_1/concatConcatV2Ftablenet/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0,tablenet/VGG-19/block3_pool/MaxPool:output:0+tablenet/concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  А
2
tablenet/concatenate_1/concatС
tablenet/up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2 
tablenet/up_sampling2d_6/ConstХ
 tablenet/up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 tablenet/up_sampling2d_6/Const_1Љ
tablenet/up_sampling2d_6/mulMul'tablenet/up_sampling2d_6/Const:output:0)tablenet/up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:2
tablenet/up_sampling2d_6/mul¶
5tablenet/up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighbor&tablenet/concatenate_3/concat:output:0 tablenet/up_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€@@А
*
half_pixel_centers(27
5tablenet/up_sampling2d_6/resize/ResizeNearestNeighborС
tablenet/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2 
tablenet/up_sampling2d_2/ConstХ
 tablenet/up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 tablenet/up_sampling2d_2/Const_1Љ
tablenet/up_sampling2d_2/mulMul'tablenet/up_sampling2d_2/Const:output:0)tablenet/up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
tablenet/up_sampling2d_2/mul¶
5tablenet/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighbor&tablenet/concatenate_1/concat:output:0 tablenet/up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€@@А
*
half_pixel_centers(27
5tablenet/up_sampling2d_2/resize/ResizeNearestNeighborС
tablenet/up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
tablenet/up_sampling2d_7/ConstХ
 tablenet/up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 tablenet/up_sampling2d_7/Const_1Љ
tablenet/up_sampling2d_7/mulMul'tablenet/up_sampling2d_7/Const:output:0)tablenet/up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:2
tablenet/up_sampling2d_7/mul»
5tablenet/up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighborFtablenet/up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0 tablenet/up_sampling2d_7/mul:z:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА
*
half_pixel_centers(27
5tablenet/up_sampling2d_7/resize/ResizeNearestNeighborС
tablenet/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
tablenet/up_sampling2d_3/ConstХ
 tablenet/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 tablenet/up_sampling2d_3/Const_1Љ
tablenet/up_sampling2d_3/mulMul'tablenet/up_sampling2d_3/Const:output:0)tablenet/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
tablenet/up_sampling2d_3/mul»
5tablenet/up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborFtablenet/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0 tablenet/up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА
*
half_pixel_centers(27
5tablenet/up_sampling2d_3/resize/ResizeNearestNeighbor≤
tablenet/column_output/ShapeShapeFtablenet/up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
tablenet/column_output/ShapeҐ
*tablenet/column_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*tablenet/column_output/strided_slice/stack¶
,tablenet/column_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,tablenet/column_output/strided_slice/stack_1¶
,tablenet/column_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,tablenet/column_output/strided_slice/stack_2м
$tablenet/column_output/strided_sliceStridedSlice%tablenet/column_output/Shape:output:03tablenet/column_output/strided_slice/stack:output:05tablenet/column_output/strided_slice/stack_1:output:05tablenet/column_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$tablenet/column_output/strided_sliceГ
tablenet/column_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2 
tablenet/column_output/stack/1Г
tablenet/column_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А2 
tablenet/column_output/stack/2В
tablenet/column_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2 
tablenet/column_output/stack/3Ь
tablenet/column_output/stackPack-tablenet/column_output/strided_slice:output:0'tablenet/column_output/stack/1:output:0'tablenet/column_output/stack/2:output:0'tablenet/column_output/stack/3:output:0*
N*
T0*
_output_shapes
:2
tablenet/column_output/stack¶
,tablenet/column_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,tablenet/column_output/strided_slice_1/stack™
.tablenet/column_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.tablenet/column_output/strided_slice_1/stack_1™
.tablenet/column_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.tablenet/column_output/strided_slice_1/stack_2ц
&tablenet/column_output/strided_slice_1StridedSlice%tablenet/column_output/stack:output:05tablenet/column_output/strided_slice_1/stack:output:07tablenet/column_output/strided_slice_1/stack_1:output:07tablenet/column_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&tablenet/column_output/strided_slice_1щ
6tablenet/column_output/conv2d_transpose/ReadVariableOpReadVariableOp?tablenet_column_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype028
6tablenet/column_output/conv2d_transpose/ReadVariableOpь
'tablenet/column_output/conv2d_transposeConv2DBackpropInput%tablenet/column_output/stack:output:0>tablenet/column_output/conv2d_transpose/ReadVariableOp:value:0Ftablenet/up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
2)
'tablenet/column_output/conv2d_transpose—
-tablenet/column_output/BiasAdd/ReadVariableOpReadVariableOp6tablenet_column_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-tablenet/column_output/BiasAdd/ReadVariableOpр
tablenet/column_output/BiasAddBiasAdd0tablenet/column_output/conv2d_transpose:output:05tablenet/column_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА2 
tablenet/column_output/BiasAdd∞
tablenet/table_output/ShapeShapeFtablenet/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
tablenet/table_output/Shape†
)tablenet/table_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)tablenet/table_output/strided_slice/stack§
+tablenet/table_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+tablenet/table_output/strided_slice/stack_1§
+tablenet/table_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+tablenet/table_output/strided_slice/stack_2ж
#tablenet/table_output/strided_sliceStridedSlice$tablenet/table_output/Shape:output:02tablenet/table_output/strided_slice/stack:output:04tablenet/table_output/strided_slice/stack_1:output:04tablenet/table_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#tablenet/table_output/strided_sliceБ
tablenet/table_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
tablenet/table_output/stack/1Б
tablenet/table_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А2
tablenet/table_output/stack/2А
tablenet/table_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
tablenet/table_output/stack/3Ц
tablenet/table_output/stackPack,tablenet/table_output/strided_slice:output:0&tablenet/table_output/stack/1:output:0&tablenet/table_output/stack/2:output:0&tablenet/table_output/stack/3:output:0*
N*
T0*
_output_shapes
:2
tablenet/table_output/stack§
+tablenet/table_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+tablenet/table_output/strided_slice_1/stack®
-tablenet/table_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-tablenet/table_output/strided_slice_1/stack_1®
-tablenet/table_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-tablenet/table_output/strided_slice_1/stack_2р
%tablenet/table_output/strided_slice_1StridedSlice$tablenet/table_output/stack:output:04tablenet/table_output/strided_slice_1/stack:output:06tablenet/table_output/strided_slice_1/stack_1:output:06tablenet/table_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%tablenet/table_output/strided_slice_1ц
5tablenet/table_output/conv2d_transpose/ReadVariableOpReadVariableOp>tablenet_table_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype027
5tablenet/table_output/conv2d_transpose/ReadVariableOpш
&tablenet/table_output/conv2d_transposeConv2DBackpropInput$tablenet/table_output/stack:output:0=tablenet/table_output/conv2d_transpose/ReadVariableOp:value:0Ftablenet/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
2(
&tablenet/table_output/conv2d_transposeќ
,tablenet/table_output/BiasAdd/ReadVariableOpReadVariableOp5tablenet_table_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,tablenet/table_output/BiasAdd/ReadVariableOpм
tablenet/table_output/BiasAddBiasAdd/tablenet/table_output/conv2d_transpose:output:04tablenet/table_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
tablenet/table_output/BiasAddр
IdentityIdentity'tablenet/column_output/BiasAdd:output:04^tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp-^tablenet/block6_conv1/BiasAdd/ReadVariableOp,^tablenet/block6_conv1/Conv2D/ReadVariableOp-^tablenet/block6_conv2/BiasAdd/ReadVariableOp,^tablenet/block6_conv2/Conv2D/ReadVariableOp4^tablenet/block7_conv1_column/BiasAdd/ReadVariableOp3^tablenet/block7_conv1_column/Conv2D/ReadVariableOp4^tablenet/block8_conv1_column/BiasAdd/ReadVariableOp3^tablenet/block8_conv1_column/Conv2D/ReadVariableOp.^tablenet/column_output/BiasAdd/ReadVariableOp7^tablenet/column_output/conv2d_transpose/ReadVariableOp,^tablenet/conv7_table/BiasAdd/ReadVariableOp+^tablenet/conv7_table/Conv2D/ReadVariableOp-^tablenet/table_output/BiasAdd/ReadVariableOp6^tablenet/table_output/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identityу

Identity_1Identity&tablenet/table_output/BiasAdd:output:04^tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp-^tablenet/block6_conv1/BiasAdd/ReadVariableOp,^tablenet/block6_conv1/Conv2D/ReadVariableOp-^tablenet/block6_conv2/BiasAdd/ReadVariableOp,^tablenet/block6_conv2/Conv2D/ReadVariableOp4^tablenet/block7_conv1_column/BiasAdd/ReadVariableOp3^tablenet/block7_conv1_column/Conv2D/ReadVariableOp4^tablenet/block8_conv1_column/BiasAdd/ReadVariableOp3^tablenet/block8_conv1_column/Conv2D/ReadVariableOp.^tablenet/column_output/BiasAdd/ReadVariableOp7^tablenet/column_output/conv2d_transpose/ReadVariableOp,^tablenet/conv7_table/BiasAdd/ReadVariableOp+^tablenet/conv7_table/Conv2D/ReadVariableOp-^tablenet/table_output/BiasAdd/ReadVariableOp6^tablenet/table_output/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2j
3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp2\
,tablenet/block6_conv1/BiasAdd/ReadVariableOp,tablenet/block6_conv1/BiasAdd/ReadVariableOp2Z
+tablenet/block6_conv1/Conv2D/ReadVariableOp+tablenet/block6_conv1/Conv2D/ReadVariableOp2\
,tablenet/block6_conv2/BiasAdd/ReadVariableOp,tablenet/block6_conv2/BiasAdd/ReadVariableOp2Z
+tablenet/block6_conv2/Conv2D/ReadVariableOp+tablenet/block6_conv2/Conv2D/ReadVariableOp2j
3tablenet/block7_conv1_column/BiasAdd/ReadVariableOp3tablenet/block7_conv1_column/BiasAdd/ReadVariableOp2h
2tablenet/block7_conv1_column/Conv2D/ReadVariableOp2tablenet/block7_conv1_column/Conv2D/ReadVariableOp2j
3tablenet/block8_conv1_column/BiasAdd/ReadVariableOp3tablenet/block8_conv1_column/BiasAdd/ReadVariableOp2h
2tablenet/block8_conv1_column/Conv2D/ReadVariableOp2tablenet/block8_conv1_column/Conv2D/ReadVariableOp2^
-tablenet/column_output/BiasAdd/ReadVariableOp-tablenet/column_output/BiasAdd/ReadVariableOp2p
6tablenet/column_output/conv2d_transpose/ReadVariableOp6tablenet/column_output/conv2d_transpose/ReadVariableOp2Z
+tablenet/conv7_table/BiasAdd/ReadVariableOp+tablenet/conv7_table/BiasAdd/ReadVariableOp2X
*tablenet/conv7_table/Conv2D/ReadVariableOp*tablenet/conv7_table/Conv2D/ReadVariableOp2\
,tablenet/table_output/BiasAdd/ReadVariableOp,tablenet/table_output/BiasAdd/ReadVariableOp2n
5tablenet/table_output/conv2d_transpose/ReadVariableOp5tablenet/table_output/conv2d_transpose/ReadVariableOp:X T
1
_output_shapes
:€€€€€€€€€АА

_user_specified_nameinput
∞
e
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_8604

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ќ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul’
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
half_pixel_centers(2
resize/ResizeNearestNeighbor§
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ќ
F
*__inference_block5_pool_layer_call_fn_7543

inputs
identityй
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_75372
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
“
§
,__inference_block6_conv1_layer_call_fn_11150

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block6_conv1_layer_call_and_return_conditional_losses_88782
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
§
Г
G__inference_block6_conv1_layer_call_and_return_conditional_losses_11141

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Њћ
Й
A__inference_VGG-19_layer_call_and_return_conditional_losses_10984

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@А;
,block2_conv1_biasadd_readvariableop_resource:	АG
+block2_conv2_conv2d_readvariableop_resource:АА;
,block2_conv2_biasadd_readvariableop_resource:	АG
+block3_conv1_conv2d_readvariableop_resource:АА;
,block3_conv1_biasadd_readvariableop_resource:	АG
+block3_conv2_conv2d_readvariableop_resource:АА;
,block3_conv2_biasadd_readvariableop_resource:	АG
+block3_conv3_conv2d_readvariableop_resource:АА;
,block3_conv3_biasadd_readvariableop_resource:	АG
+block3_conv4_conv2d_readvariableop_resource:АА;
,block3_conv4_biasadd_readvariableop_resource:	АG
+block4_conv1_conv2d_readvariableop_resource:АА;
,block4_conv1_biasadd_readvariableop_resource:	АG
+block4_conv2_conv2d_readvariableop_resource:АА;
,block4_conv2_biasadd_readvariableop_resource:	АG
+block4_conv3_conv2d_readvariableop_resource:АА;
,block4_conv3_biasadd_readvariableop_resource:	АG
+block4_conv4_conv2d_readvariableop_resource:АА;
,block4_conv4_biasadd_readvariableop_resource:	АG
+block5_conv1_conv2d_readvariableop_resource:АА;
,block5_conv1_biasadd_readvariableop_resource:	АG
+block5_conv2_conv2d_readvariableop_resource:АА;
,block5_conv2_biasadd_readvariableop_resource:	АG
+block5_conv3_conv2d_readvariableop_resource:АА;
,block5_conv3_biasadd_readvariableop_resource:	АG
+block5_conv4_conv2d_readvariableop_resource:АА;
,block5_conv4_biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐ#block1_conv1/BiasAdd/ReadVariableOpҐ"block1_conv1/Conv2D/ReadVariableOpҐ#block1_conv2/BiasAdd/ReadVariableOpҐ"block1_conv2/Conv2D/ReadVariableOpҐ#block2_conv1/BiasAdd/ReadVariableOpҐ"block2_conv1/Conv2D/ReadVariableOpҐ#block2_conv2/BiasAdd/ReadVariableOpҐ"block2_conv2/Conv2D/ReadVariableOpҐ#block3_conv1/BiasAdd/ReadVariableOpҐ"block3_conv1/Conv2D/ReadVariableOpҐ#block3_conv2/BiasAdd/ReadVariableOpҐ"block3_conv2/Conv2D/ReadVariableOpҐ#block3_conv3/BiasAdd/ReadVariableOpҐ"block3_conv3/Conv2D/ReadVariableOpҐ#block3_conv4/BiasAdd/ReadVariableOpҐ"block3_conv4/Conv2D/ReadVariableOpҐ#block4_conv1/BiasAdd/ReadVariableOpҐ"block4_conv1/Conv2D/ReadVariableOpҐ#block4_conv2/BiasAdd/ReadVariableOpҐ"block4_conv2/Conv2D/ReadVariableOpҐ#block4_conv3/BiasAdd/ReadVariableOpҐ"block4_conv3/Conv2D/ReadVariableOpҐ#block4_conv4/BiasAdd/ReadVariableOpҐ"block4_conv4/Conv2D/ReadVariableOpҐ#block5_conv1/BiasAdd/ReadVariableOpҐ"block5_conv1/Conv2D/ReadVariableOpҐ#block5_conv2/BiasAdd/ReadVariableOpҐ"block5_conv2/Conv2D/ReadVariableOpҐ#block5_conv3/BiasAdd/ReadVariableOpҐ"block5_conv3/Conv2D/ReadVariableOpҐ#block5_conv4/BiasAdd/ReadVariableOpҐ"block5_conv4/Conv2D/ReadVariableOpЉ
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOpћ
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2
block1_conv1/Conv2D≥
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOpЊ
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
block1_conv1/BiasAddЙ
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
block1_conv1/ReluЉ
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOpе
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2
block1_conv2/Conv2D≥
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOpЊ
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
block1_conv2/BiasAddЙ
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
block1_conv2/Relu≈
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*1
_output_shapes
:€€€€€€€€€АА@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPoolљ
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02$
"block2_conv1/Conv2D/ReadVariableOpг
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2
block2_conv1/Conv2Dі
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOpњ
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
block2_conv1/BiasAddК
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
block2_conv1/ReluЊ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block2_conv2/Conv2D/ReadVariableOpж
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2
block2_conv2/Conv2Dі
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOpњ
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
block2_conv2/BiasAddК
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
block2_conv2/Reluƒ
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:€€€€€€€€€@@А*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPoolЊ
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv1/Conv2D/ReadVariableOpб
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
block3_conv1/Conv2Dі
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOpљ
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv1/BiasAddИ
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv1/ReluЊ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv2/Conv2D/ReadVariableOpд
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
block3_conv2/Conv2Dі
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOpљ
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv2/BiasAddИ
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv2/ReluЊ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv3/Conv2D/ReadVariableOpд
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
block3_conv3/Conv2Dі
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOpљ
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv3/BiasAddИ
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv3/ReluЊ
"block3_conv4/Conv2D/ReadVariableOpReadVariableOp+block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv4/Conv2D/ReadVariableOpд
block3_conv4/Conv2DConv2Dblock3_conv3/Relu:activations:0*block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
block3_conv4/Conv2Dі
#block3_conv4/BiasAdd/ReadVariableOpReadVariableOp,block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv4/BiasAdd/ReadVariableOpљ
block3_conv4/BiasAddBiasAddblock3_conv4/Conv2D:output:0+block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv4/BiasAddИ
block3_conv4/ReluRelublock3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
block3_conv4/Reluƒ
block3_pool/MaxPoolMaxPoolblock3_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€  А*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPoolЊ
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv1/Conv2D/ReadVariableOpб
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
block4_conv1/Conv2Dі
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOpљ
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv1/BiasAddИ
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv1/ReluЊ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv2/Conv2D/ReadVariableOpд
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
block4_conv2/Conv2Dі
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOpљ
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv2/BiasAddИ
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv2/ReluЊ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv3/Conv2D/ReadVariableOpд
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
block4_conv3/Conv2Dі
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOpљ
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv3/BiasAddИ
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv3/ReluЊ
"block4_conv4/Conv2D/ReadVariableOpReadVariableOp+block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv4/Conv2D/ReadVariableOpд
block4_conv4/Conv2DConv2Dblock4_conv3/Relu:activations:0*block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
block4_conv4/Conv2Dі
#block4_conv4/BiasAdd/ReadVariableOpReadVariableOp,block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv4/BiasAdd/ReadVariableOpљ
block4_conv4/BiasAddBiasAddblock4_conv4/Conv2D:output:0+block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv4/BiasAddИ
block4_conv4/ReluRelublock4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
block4_conv4/Reluƒ
block4_pool/MaxPoolMaxPoolblock4_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPoolЊ
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv1/Conv2D/ReadVariableOpб
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv1/Conv2Dі
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOpљ
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv1/BiasAddИ
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv1/ReluЊ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv2/Conv2D/ReadVariableOpд
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv2/Conv2Dі
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOpљ
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv2/BiasAddИ
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv2/ReluЊ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv3/Conv2D/ReadVariableOpд
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv3/Conv2Dі
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOpљ
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv3/BiasAddИ
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv3/ReluЊ
"block5_conv4/Conv2D/ReadVariableOpReadVariableOp+block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv4/Conv2D/ReadVariableOpд
block5_conv4/Conv2DConv2Dblock5_conv3/Relu:activations:0*block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv4/Conv2Dі
#block5_conv4/BiasAdd/ReadVariableOpReadVariableOp,block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv4/BiasAdd/ReadVariableOpљ
block5_conv4/BiasAddBiasAddblock5_conv4/Conv2D:output:0+block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv4/BiasAddИ
block5_conv4/ReluRelublock5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv4/Reluƒ
block5_pool/MaxPoolMaxPoolblock5_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool©

IdentityIdentityblock3_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity≠


Identity_1Identityblock4_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1≠


Identity_2Identityblock5_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block3_conv4/BiasAdd/ReadVariableOp#block3_conv4/BiasAdd/ReadVariableOp2H
"block3_conv4/Conv2D/ReadVariableOp"block3_conv4/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block4_conv4/BiasAdd/ReadVariableOp#block4_conv4/BiasAdd/ReadVariableOp2H
"block4_conv4/Conv2D/ReadVariableOp"block4_conv4/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2J
#block5_conv4/BiasAdd/ReadVariableOp#block5_conv4/BiasAdd/ReadVariableOp2H
"block5_conv4/Conv2D/ReadVariableOp"block5_conv4/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
£
Г
G__inference_block3_conv2_layer_call_and_return_conditional_losses_11474

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€@@А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
“
H
,__inference_up_sampling2d_layer_call_fn_8572

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_85662
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
“
§
,__inference_block6_conv2_layer_call_fn_11197

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block6_conv2_layer_call_and_return_conditional_losses_89022
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
•
Y
-__inference_concatenate_2_layer_call_fn_11337
inputs_0
inputs_1
identityё
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_2_layer_call_and_return_conditional_losses_89822
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:€€€€€€€€€А:l h
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/1
™
Б
F__inference_block2_conv1_layer_call_and_return_conditional_losses_7596

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOp¶
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЛ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
ReluҐ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*2
_output_shapes 
:€€€€€€€€€ААА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА@
 
_user_specified_nameinputs
•
a
E__inference_block4_pool_layer_call_and_return_conditional_losses_7525

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
£
В
F__inference_block6_conv2_layer_call_and_return_conditional_losses_8902

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ђ
К
N__inference_block7_conv1_column_layer_call_and_return_conditional_losses_11235

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ѓ$
Х
G__inference_column_output_layer_call_and_return_conditional_losses_8783

inputsC
(conv2d_transpose_readvariableop_resource:А
-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2м
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2м
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2м
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3і
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype02!
conv2d_transpose/ReadVariableOpр
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp§
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2	
BiasAddє
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А

 
_user_specified_nameinputs
€
n
O__inference_block7_dropout_column_layer_call_and_return_conditional_losses_9194

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †@2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeљ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?2
dropout/GreaterEqual/y«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
∞
e
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_8623

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ќ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul’
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
half_pixel_centers(2
resize/ResizeNearestNeighbor§
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
£
Г
G__inference_block5_conv2_layer_call_and_return_conditional_losses_11634

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ў
Ы	
&__inference_VGG-19_layer_call_fn_11057

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall—
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:€€€€€€€€€  А:€€€€€€€€€А:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_VGG-19_layer_call_and_return_conditional_losses_78302
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

IdentityЫ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1Ы

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
≠Ѓ
ќ*
C__inference_tablenet_layer_call_and_return_conditional_losses_10540

inputsL
2vgg_19_block1_conv1_conv2d_readvariableop_resource:@A
3vgg_19_block1_conv1_biasadd_readvariableop_resource:@L
2vgg_19_block1_conv2_conv2d_readvariableop_resource:@@A
3vgg_19_block1_conv2_biasadd_readvariableop_resource:@M
2vgg_19_block2_conv1_conv2d_readvariableop_resource:@АB
3vgg_19_block2_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block2_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block2_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv4_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv4_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv4_biasadd_readvariableop_resource:	АG
+block6_conv1_conv2d_readvariableop_resource:АА;
,block6_conv1_biasadd_readvariableop_resource:	АG
+block6_conv2_conv2d_readvariableop_resource:АА;
,block6_conv2_biasadd_readvariableop_resource:	АN
2block7_conv1_column_conv2d_readvariableop_resource:ААB
3block7_conv1_column_biasadd_readvariableop_resource:	АN
2block8_conv1_column_conv2d_readvariableop_resource:ААB
3block8_conv1_column_biasadd_readvariableop_resource:	АF
*conv7_table_conv2d_readvariableop_resource:АА:
+conv7_table_biasadd_readvariableop_resource:	АQ
6column_output_conv2d_transpose_readvariableop_resource:А
;
-column_output_biasadd_readvariableop_resource:P
5table_output_conv2d_transpose_readvariableop_resource:А
:
,table_output_biasadd_readvariableop_resource:
identity

identity_1ИҐ*VGG-19/block1_conv1/BiasAdd/ReadVariableOpҐ)VGG-19/block1_conv1/Conv2D/ReadVariableOpҐ*VGG-19/block1_conv2/BiasAdd/ReadVariableOpҐ)VGG-19/block1_conv2/Conv2D/ReadVariableOpҐ*VGG-19/block2_conv1/BiasAdd/ReadVariableOpҐ)VGG-19/block2_conv1/Conv2D/ReadVariableOpҐ*VGG-19/block2_conv2/BiasAdd/ReadVariableOpҐ)VGG-19/block2_conv2/Conv2D/ReadVariableOpҐ*VGG-19/block3_conv1/BiasAdd/ReadVariableOpҐ)VGG-19/block3_conv1/Conv2D/ReadVariableOpҐ*VGG-19/block3_conv2/BiasAdd/ReadVariableOpҐ)VGG-19/block3_conv2/Conv2D/ReadVariableOpҐ*VGG-19/block3_conv3/BiasAdd/ReadVariableOpҐ)VGG-19/block3_conv3/Conv2D/ReadVariableOpҐ*VGG-19/block3_conv4/BiasAdd/ReadVariableOpҐ)VGG-19/block3_conv4/Conv2D/ReadVariableOpҐ*VGG-19/block4_conv1/BiasAdd/ReadVariableOpҐ)VGG-19/block4_conv1/Conv2D/ReadVariableOpҐ*VGG-19/block4_conv2/BiasAdd/ReadVariableOpҐ)VGG-19/block4_conv2/Conv2D/ReadVariableOpҐ*VGG-19/block4_conv3/BiasAdd/ReadVariableOpҐ)VGG-19/block4_conv3/Conv2D/ReadVariableOpҐ*VGG-19/block4_conv4/BiasAdd/ReadVariableOpҐ)VGG-19/block4_conv4/Conv2D/ReadVariableOpҐ*VGG-19/block5_conv1/BiasAdd/ReadVariableOpҐ)VGG-19/block5_conv1/Conv2D/ReadVariableOpҐ*VGG-19/block5_conv2/BiasAdd/ReadVariableOpҐ)VGG-19/block5_conv2/Conv2D/ReadVariableOpҐ*VGG-19/block5_conv3/BiasAdd/ReadVariableOpҐ)VGG-19/block5_conv3/Conv2D/ReadVariableOpҐ*VGG-19/block5_conv4/BiasAdd/ReadVariableOpҐ)VGG-19/block5_conv4/Conv2D/ReadVariableOpҐ#block6_conv1/BiasAdd/ReadVariableOpҐ"block6_conv1/Conv2D/ReadVariableOpҐ#block6_conv2/BiasAdd/ReadVariableOpҐ"block6_conv2/Conv2D/ReadVariableOpҐ*block7_conv1_column/BiasAdd/ReadVariableOpҐ)block7_conv1_column/Conv2D/ReadVariableOpҐ*block8_conv1_column/BiasAdd/ReadVariableOpҐ)block8_conv1_column/Conv2D/ReadVariableOpҐ$column_output/BiasAdd/ReadVariableOpҐ-column_output/conv2d_transpose/ReadVariableOpҐ"conv7_table/BiasAdd/ReadVariableOpҐ!conv7_table/Conv2D/ReadVariableOpҐ#table_output/BiasAdd/ReadVariableOpҐ,table_output/conv2d_transpose/ReadVariableOp—
)VGG-19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02+
)VGG-19/block1_conv1/Conv2D/ReadVariableOpб
VGG-19/block1_conv1/Conv2DConv2Dinputs1VGG-19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2
VGG-19/block1_conv1/Conv2D»
*VGG-19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*VGG-19/block1_conv1/BiasAdd/ReadVariableOpЏ
VGG-19/block1_conv1/BiasAddBiasAdd#VGG-19/block1_conv1/Conv2D:output:02VGG-19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
VGG-19/block1_conv1/BiasAddЮ
VGG-19/block1_conv1/ReluRelu$VGG-19/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
VGG-19/block1_conv1/Relu—
)VGG-19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02+
)VGG-19/block1_conv2/Conv2D/ReadVariableOpБ
VGG-19/block1_conv2/Conv2DConv2D&VGG-19/block1_conv1/Relu:activations:01VGG-19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2
VGG-19/block1_conv2/Conv2D»
*VGG-19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*VGG-19/block1_conv2/BiasAdd/ReadVariableOpЏ
VGG-19/block1_conv2/BiasAddBiasAdd#VGG-19/block1_conv2/Conv2D:output:02VGG-19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
VGG-19/block1_conv2/BiasAddЮ
VGG-19/block1_conv2/ReluRelu$VGG-19/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
VGG-19/block1_conv2/ReluЏ
VGG-19/block1_pool/MaxPoolMaxPool&VGG-19/block1_conv2/Relu:activations:0*1
_output_shapes
:€€€€€€€€€АА@*
ksize
*
paddingVALID*
strides
2
VGG-19/block1_pool/MaxPool“
)VGG-19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02+
)VGG-19/block2_conv1/Conv2D/ReadVariableOp€
VGG-19/block2_conv1/Conv2DConv2D#VGG-19/block1_pool/MaxPool:output:01VGG-19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2
VGG-19/block2_conv1/Conv2D…
*VGG-19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block2_conv1/BiasAdd/ReadVariableOpџ
VGG-19/block2_conv1/BiasAddBiasAdd#VGG-19/block2_conv1/Conv2D:output:02VGG-19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
VGG-19/block2_conv1/BiasAddЯ
VGG-19/block2_conv1/ReluRelu$VGG-19/block2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
VGG-19/block2_conv1/Relu”
)VGG-19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block2_conv2/Conv2D/ReadVariableOpВ
VGG-19/block2_conv2/Conv2DConv2D&VGG-19/block2_conv1/Relu:activations:01VGG-19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2
VGG-19/block2_conv2/Conv2D…
*VGG-19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block2_conv2/BiasAdd/ReadVariableOpџ
VGG-19/block2_conv2/BiasAddBiasAdd#VGG-19/block2_conv2/Conv2D:output:02VGG-19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
VGG-19/block2_conv2/BiasAddЯ
VGG-19/block2_conv2/ReluRelu$VGG-19/block2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
VGG-19/block2_conv2/Reluў
VGG-19/block2_pool/MaxPoolMaxPool&VGG-19/block2_conv2/Relu:activations:0*0
_output_shapes
:€€€€€€€€€@@А*
ksize
*
paddingVALID*
strides
2
VGG-19/block2_pool/MaxPool”
)VGG-19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block3_conv1/Conv2D/ReadVariableOpэ
VGG-19/block3_conv1/Conv2DConv2D#VGG-19/block2_pool/MaxPool:output:01VGG-19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
VGG-19/block3_conv1/Conv2D…
*VGG-19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block3_conv1/BiasAdd/ReadVariableOpў
VGG-19/block3_conv1/BiasAddBiasAdd#VGG-19/block3_conv1/Conv2D:output:02VGG-19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv1/BiasAddЭ
VGG-19/block3_conv1/ReluRelu$VGG-19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv1/Relu”
)VGG-19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block3_conv2/Conv2D/ReadVariableOpА
VGG-19/block3_conv2/Conv2DConv2D&VGG-19/block3_conv1/Relu:activations:01VGG-19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
VGG-19/block3_conv2/Conv2D…
*VGG-19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block3_conv2/BiasAdd/ReadVariableOpў
VGG-19/block3_conv2/BiasAddBiasAdd#VGG-19/block3_conv2/Conv2D:output:02VGG-19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv2/BiasAddЭ
VGG-19/block3_conv2/ReluRelu$VGG-19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv2/Relu”
)VGG-19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block3_conv3/Conv2D/ReadVariableOpА
VGG-19/block3_conv3/Conv2DConv2D&VGG-19/block3_conv2/Relu:activations:01VGG-19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
VGG-19/block3_conv3/Conv2D…
*VGG-19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block3_conv3/BiasAdd/ReadVariableOpў
VGG-19/block3_conv3/BiasAddBiasAdd#VGG-19/block3_conv3/Conv2D:output:02VGG-19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv3/BiasAddЭ
VGG-19/block3_conv3/ReluRelu$VGG-19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv3/Relu”
)VGG-19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block3_conv4/Conv2D/ReadVariableOpА
VGG-19/block3_conv4/Conv2DConv2D&VGG-19/block3_conv3/Relu:activations:01VGG-19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
VGG-19/block3_conv4/Conv2D…
*VGG-19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block3_conv4/BiasAdd/ReadVariableOpў
VGG-19/block3_conv4/BiasAddBiasAdd#VGG-19/block3_conv4/Conv2D:output:02VGG-19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv4/BiasAddЭ
VGG-19/block3_conv4/ReluRelu$VGG-19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
VGG-19/block3_conv4/Reluў
VGG-19/block3_pool/MaxPoolMaxPool&VGG-19/block3_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€  А*
ksize
*
paddingVALID*
strides
2
VGG-19/block3_pool/MaxPool”
)VGG-19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block4_conv1/Conv2D/ReadVariableOpэ
VGG-19/block4_conv1/Conv2DConv2D#VGG-19/block3_pool/MaxPool:output:01VGG-19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
VGG-19/block4_conv1/Conv2D…
*VGG-19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block4_conv1/BiasAdd/ReadVariableOpў
VGG-19/block4_conv1/BiasAddBiasAdd#VGG-19/block4_conv1/Conv2D:output:02VGG-19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv1/BiasAddЭ
VGG-19/block4_conv1/ReluRelu$VGG-19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv1/Relu”
)VGG-19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block4_conv2/Conv2D/ReadVariableOpА
VGG-19/block4_conv2/Conv2DConv2D&VGG-19/block4_conv1/Relu:activations:01VGG-19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
VGG-19/block4_conv2/Conv2D…
*VGG-19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block4_conv2/BiasAdd/ReadVariableOpў
VGG-19/block4_conv2/BiasAddBiasAdd#VGG-19/block4_conv2/Conv2D:output:02VGG-19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv2/BiasAddЭ
VGG-19/block4_conv2/ReluRelu$VGG-19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv2/Relu”
)VGG-19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block4_conv3/Conv2D/ReadVariableOpА
VGG-19/block4_conv3/Conv2DConv2D&VGG-19/block4_conv2/Relu:activations:01VGG-19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
VGG-19/block4_conv3/Conv2D…
*VGG-19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block4_conv3/BiasAdd/ReadVariableOpў
VGG-19/block4_conv3/BiasAddBiasAdd#VGG-19/block4_conv3/Conv2D:output:02VGG-19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv3/BiasAddЭ
VGG-19/block4_conv3/ReluRelu$VGG-19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv3/Relu”
)VGG-19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block4_conv4/Conv2D/ReadVariableOpА
VGG-19/block4_conv4/Conv2DConv2D&VGG-19/block4_conv3/Relu:activations:01VGG-19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
VGG-19/block4_conv4/Conv2D…
*VGG-19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block4_conv4/BiasAdd/ReadVariableOpў
VGG-19/block4_conv4/BiasAddBiasAdd#VGG-19/block4_conv4/Conv2D:output:02VGG-19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv4/BiasAddЭ
VGG-19/block4_conv4/ReluRelu$VGG-19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
VGG-19/block4_conv4/Reluў
VGG-19/block4_pool/MaxPoolMaxPool&VGG-19/block4_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
VGG-19/block4_pool/MaxPool”
)VGG-19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block5_conv1/Conv2D/ReadVariableOpэ
VGG-19/block5_conv1/Conv2DConv2D#VGG-19/block4_pool/MaxPool:output:01VGG-19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
VGG-19/block5_conv1/Conv2D…
*VGG-19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block5_conv1/BiasAdd/ReadVariableOpў
VGG-19/block5_conv1/BiasAddBiasAdd#VGG-19/block5_conv1/Conv2D:output:02VGG-19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv1/BiasAddЭ
VGG-19/block5_conv1/ReluRelu$VGG-19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv1/Relu”
)VGG-19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block5_conv2/Conv2D/ReadVariableOpА
VGG-19/block5_conv2/Conv2DConv2D&VGG-19/block5_conv1/Relu:activations:01VGG-19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
VGG-19/block5_conv2/Conv2D…
*VGG-19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block5_conv2/BiasAdd/ReadVariableOpў
VGG-19/block5_conv2/BiasAddBiasAdd#VGG-19/block5_conv2/Conv2D:output:02VGG-19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv2/BiasAddЭ
VGG-19/block5_conv2/ReluRelu$VGG-19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv2/Relu”
)VGG-19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block5_conv3/Conv2D/ReadVariableOpА
VGG-19/block5_conv3/Conv2DConv2D&VGG-19/block5_conv2/Relu:activations:01VGG-19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
VGG-19/block5_conv3/Conv2D…
*VGG-19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block5_conv3/BiasAdd/ReadVariableOpў
VGG-19/block5_conv3/BiasAddBiasAdd#VGG-19/block5_conv3/Conv2D:output:02VGG-19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv3/BiasAddЭ
VGG-19/block5_conv3/ReluRelu$VGG-19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv3/Relu”
)VGG-19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)VGG-19/block5_conv4/Conv2D/ReadVariableOpА
VGG-19/block5_conv4/Conv2DConv2D&VGG-19/block5_conv3/Relu:activations:01VGG-19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
VGG-19/block5_conv4/Conv2D…
*VGG-19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*VGG-19/block5_conv4/BiasAdd/ReadVariableOpў
VGG-19/block5_conv4/BiasAddBiasAdd#VGG-19/block5_conv4/Conv2D:output:02VGG-19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv4/BiasAddЭ
VGG-19/block5_conv4/ReluRelu$VGG-19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
VGG-19/block5_conv4/Reluў
VGG-19/block5_pool/MaxPoolMaxPool&VGG-19/block5_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
VGG-19/block5_pool/MaxPoolЊ
"block6_conv1/Conv2D/ReadVariableOpReadVariableOp+block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block6_conv1/Conv2D/ReadVariableOpй
block6_conv1/Conv2DConv2D#VGG-19/block5_pool/MaxPool:output:0*block6_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
block6_conv1/Conv2Dі
#block6_conv1/BiasAdd/ReadVariableOpReadVariableOp,block6_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block6_conv1/BiasAdd/ReadVariableOpљ
block6_conv1/BiasAddBiasAddblock6_conv1/Conv2D:output:0+block6_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_conv1/BiasAddИ
block6_conv1/ReluRelublock6_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_conv1/ReluГ
block6_dropout1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †@2
block6_dropout1/dropout/Const≈
block6_dropout1/dropout/MulMulblock6_conv1/Relu:activations:0&block6_dropout1/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_dropout1/dropout/MulН
block6_dropout1/dropout/ShapeShapeblock6_conv1/Relu:activations:0*
T0*
_output_shapes
:2
block6_dropout1/dropout/Shapeн
4block6_dropout1/dropout/random_uniform/RandomUniformRandomUniform&block6_dropout1/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype026
4block6_dropout1/dropout/random_uniform/RandomUniformХ
&block6_dropout1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?2(
&block6_dropout1/dropout/GreaterEqual/yЗ
$block6_dropout1/dropout/GreaterEqualGreaterEqual=block6_dropout1/dropout/random_uniform/RandomUniform:output:0/block6_dropout1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2&
$block6_dropout1/dropout/GreaterEqualЄ
block6_dropout1/dropout/CastCast(block6_dropout1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
block6_dropout1/dropout/Cast√
block6_dropout1/dropout/Mul_1Mulblock6_dropout1/dropout/Mul:z:0 block6_dropout1/dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_dropout1/dropout/Mul_1Њ
"block6_conv2/Conv2D/ReadVariableOpReadVariableOp+block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block6_conv2/Conv2D/ReadVariableOpз
block6_conv2/Conv2DConv2D!block6_dropout1/dropout/Mul_1:z:0*block6_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
block6_conv2/Conv2Dі
#block6_conv2/BiasAdd/ReadVariableOpReadVariableOp,block6_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block6_conv2/BiasAdd/ReadVariableOpљ
block6_conv2/BiasAddBiasAddblock6_conv2/Conv2D:output:0+block6_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_conv2/BiasAddИ
block6_conv2/ReluRelublock6_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_conv2/ReluГ
block6_dropout2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †@2
block6_dropout2/dropout/Const≈
block6_dropout2/dropout/MulMulblock6_conv2/Relu:activations:0&block6_dropout2/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_dropout2/dropout/MulН
block6_dropout2/dropout/ShapeShapeblock6_conv2/Relu:activations:0*
T0*
_output_shapes
:2
block6_dropout2/dropout/Shapeн
4block6_dropout2/dropout/random_uniform/RandomUniformRandomUniform&block6_dropout2/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype026
4block6_dropout2/dropout/random_uniform/RandomUniformХ
&block6_dropout2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?2(
&block6_dropout2/dropout/GreaterEqual/yЗ
$block6_dropout2/dropout/GreaterEqualGreaterEqual=block6_dropout2/dropout/random_uniform/RandomUniform:output:0/block6_dropout2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2&
$block6_dropout2/dropout/GreaterEqualЄ
block6_dropout2/dropout/CastCast(block6_dropout2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
block6_dropout2/dropout/Cast√
block6_dropout2/dropout/Mul_1Mulblock6_dropout2/dropout/Mul:z:0 block6_dropout2/dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block6_dropout2/dropout/Mul_1”
)block7_conv1_column/Conv2D/ReadVariableOpReadVariableOp2block7_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)block7_conv1_column/Conv2D/ReadVariableOpь
block7_conv1_column/Conv2DConv2D!block6_dropout2/dropout/Mul_1:z:01block7_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
block7_conv1_column/Conv2D…
*block7_conv1_column/BiasAdd/ReadVariableOpReadVariableOp3block7_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*block7_conv1_column/BiasAdd/ReadVariableOpў
block7_conv1_column/BiasAddBiasAdd#block7_conv1_column/Conv2D:output:02block7_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block7_conv1_column/BiasAddЭ
block7_conv1_column/ReluRelu$block7_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block7_conv1_column/ReluП
#block7_dropout_column/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †@2%
#block7_dropout_column/dropout/Constё
!block7_dropout_column/dropout/MulMul&block7_conv1_column/Relu:activations:0,block7_dropout_column/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2#
!block7_dropout_column/dropout/Mul†
#block7_dropout_column/dropout/ShapeShape&block7_conv1_column/Relu:activations:0*
T0*
_output_shapes
:2%
#block7_dropout_column/dropout/Shape€
:block7_dropout_column/dropout/random_uniform/RandomUniformRandomUniform,block7_dropout_column/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype02<
:block7_dropout_column/dropout/random_uniform/RandomUniform°
,block7_dropout_column/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?2.
,block7_dropout_column/dropout/GreaterEqual/yЯ
*block7_dropout_column/dropout/GreaterEqualGreaterEqualCblock7_dropout_column/dropout/random_uniform/RandomUniform:output:05block7_dropout_column/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2,
*block7_dropout_column/dropout/GreaterEqual 
"block7_dropout_column/dropout/CastCast.block7_dropout_column/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2$
"block7_dropout_column/dropout/Castџ
#block7_dropout_column/dropout/Mul_1Mul%block7_dropout_column/dropout/Mul:z:0&block7_dropout_column/dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2%
#block7_dropout_column/dropout/Mul_1”
)block8_conv1_column/Conv2D/ReadVariableOpReadVariableOp2block8_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)block8_conv1_column/Conv2D/ReadVariableOpВ
block8_conv1_column/Conv2DConv2D'block7_dropout_column/dropout/Mul_1:z:01block8_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
block8_conv1_column/Conv2D…
*block8_conv1_column/BiasAdd/ReadVariableOpReadVariableOp3block8_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*block8_conv1_column/BiasAdd/ReadVariableOpў
block8_conv1_column/BiasAddBiasAdd#block8_conv1_column/Conv2D:output:02block8_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block8_conv1_column/BiasAddЭ
block8_conv1_column/ReluRelu$block8_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block8_conv1_column/Reluї
!conv7_table/Conv2D/ReadVariableOpReadVariableOp*conv7_table_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02#
!conv7_table/Conv2D/ReadVariableOpд
conv7_table/Conv2DConv2D!block6_dropout2/dropout/Mul_1:z:0)conv7_table/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
conv7_table/Conv2D±
"conv7_table/BiasAdd/ReadVariableOpReadVariableOp+conv7_table_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02$
"conv7_table/BiasAdd/ReadVariableOpє
conv7_table/BiasAddBiasAddconv7_table/Conv2D:output:0*conv7_table/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv7_table/BiasAddЕ
conv7_table/ReluReluconv7_table/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv7_table/Relu
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_4/ConstГ
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_4/Const_1Ш
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_4/mulЛ
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor&block8_conv1_column/Relu:activations:0up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€А*
half_pixel_centers(2.
,up_sampling2d_4/resize/ResizeNearestNeighbor{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_1Р
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mulэ
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborconv7_table/Relu:activations:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€А*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighborx
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axisД
concatenate_2/concatConcatV2=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block4_pool/MaxPool:output:0"concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€А2
concatenate_2/concatt
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisь
concatenate/concatConcatV2;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block4_pool/MaxPool:output:0 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€А2
concatenate/concat
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_5/ConstГ
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_5/Const_1Ш
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_5/mulВ
,up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_2/concat:output:0up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
half_pixel_centers(2.
,up_sampling2d_5/resize/ResizeNearestNeighbor
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/ConstГ
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1Ш
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mulА
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate/concat:output:0up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighborx
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axisД
concatenate_3/concatConcatV2=up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block3_pool/MaxPool:output:0"concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  А
2
concatenate_3/concatx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axisД
concatenate_1/concatConcatV2=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block3_pool/MaxPool:output:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  А
2
concatenate_1/concat
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_6/ConstГ
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_6/Const_1Ш
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_6/mulВ
,up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_3/concat:output:0up_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€@@А
*
half_pixel_centers(2.
,up_sampling2d_6/resize/ResizeNearestNeighbor
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_2/ConstГ
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const_1Ш
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mulВ
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:€€€€€€€€€@@А
*
half_pixel_centers(2.
,up_sampling2d_2/resize/ResizeNearestNeighbor
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_7/ConstГ
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_7/Const_1Ш
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_7/mul§
,up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_7/mul:z:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА
*
half_pixel_centers(2.
,up_sampling2d_7/resize/ResizeNearestNeighbor
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_3/ConstГ
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const_1Ш
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_3/mul§
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА
*
half_pixel_centers(2.
,up_sampling2d_3/resize/ResizeNearestNeighborЧ
column_output/ShapeShape=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
column_output/ShapeР
!column_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!column_output/strided_slice/stackФ
#column_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#column_output/strided_slice/stack_1Ф
#column_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#column_output/strided_slice/stack_2ґ
column_output/strided_sliceStridedSlicecolumn_output/Shape:output:0*column_output/strided_slice/stack:output:0,column_output/strided_slice/stack_1:output:0,column_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
column_output/strided_sliceq
column_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
column_output/stack/1q
column_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А2
column_output/stack/2p
column_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
column_output/stack/3ж
column_output/stackPack$column_output/strided_slice:output:0column_output/stack/1:output:0column_output/stack/2:output:0column_output/stack/3:output:0*
N*
T0*
_output_shapes
:2
column_output/stackФ
#column_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#column_output/strided_slice_1/stackШ
%column_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%column_output/strided_slice_1/stack_1Ш
%column_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%column_output/strided_slice_1/stack_2ј
column_output/strided_slice_1StridedSlicecolumn_output/stack:output:0,column_output/strided_slice_1/stack:output:0.column_output/strided_slice_1/stack_1:output:0.column_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
column_output/strided_slice_1ё
-column_output/conv2d_transpose/ReadVariableOpReadVariableOp6column_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype02/
-column_output/conv2d_transpose/ReadVariableOpѕ
column_output/conv2d_transposeConv2DBackpropInputcolumn_output/stack:output:05column_output/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
2 
column_output/conv2d_transposeґ
$column_output/BiasAdd/ReadVariableOpReadVariableOp-column_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$column_output/BiasAdd/ReadVariableOpћ
column_output/BiasAddBiasAdd'column_output/conv2d_transpose:output:0,column_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
column_output/BiasAddХ
table_output/ShapeShape=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
table_output/ShapeО
 table_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 table_output/strided_slice/stackТ
"table_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"table_output/strided_slice/stack_1Т
"table_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"table_output/strided_slice/stack_2∞
table_output/strided_sliceStridedSlicetable_output/Shape:output:0)table_output/strided_slice/stack:output:0+table_output/strided_slice/stack_1:output:0+table_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
table_output/strided_sliceo
table_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
table_output/stack/1o
table_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А2
table_output/stack/2n
table_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
table_output/stack/3а
table_output/stackPack#table_output/strided_slice:output:0table_output/stack/1:output:0table_output/stack/2:output:0table_output/stack/3:output:0*
N*
T0*
_output_shapes
:2
table_output/stackТ
"table_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"table_output/strided_slice_1/stackЦ
$table_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$table_output/strided_slice_1/stack_1Ц
$table_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$table_output/strided_slice_1/stack_2Ї
table_output/strided_slice_1StridedSlicetable_output/stack:output:0+table_output/strided_slice_1/stack:output:0-table_output/strided_slice_1/stack_1:output:0-table_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
table_output/strided_slice_1џ
,table_output/conv2d_transpose/ReadVariableOpReadVariableOp5table_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype02.
,table_output/conv2d_transpose/ReadVariableOpЋ
table_output/conv2d_transposeConv2DBackpropInputtable_output/stack:output:04table_output/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
2
table_output/conv2d_transpose≥
#table_output/BiasAdd/ReadVariableOpReadVariableOp,table_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#table_output/BiasAdd/ReadVariableOp»
table_output/BiasAddBiasAdd&table_output/conv2d_transpose:output:0+table_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
table_output/BiasAdd»
IdentityIdentitytable_output/BiasAdd:output:0+^VGG-19/block1_conv1/BiasAdd/ReadVariableOp*^VGG-19/block1_conv1/Conv2D/ReadVariableOp+^VGG-19/block1_conv2/BiasAdd/ReadVariableOp*^VGG-19/block1_conv2/Conv2D/ReadVariableOp+^VGG-19/block2_conv1/BiasAdd/ReadVariableOp*^VGG-19/block2_conv1/Conv2D/ReadVariableOp+^VGG-19/block2_conv2/BiasAdd/ReadVariableOp*^VGG-19/block2_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv1/BiasAdd/ReadVariableOp*^VGG-19/block3_conv1/Conv2D/ReadVariableOp+^VGG-19/block3_conv2/BiasAdd/ReadVariableOp*^VGG-19/block3_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv3/BiasAdd/ReadVariableOp*^VGG-19/block3_conv3/Conv2D/ReadVariableOp+^VGG-19/block3_conv4/BiasAdd/ReadVariableOp*^VGG-19/block3_conv4/Conv2D/ReadVariableOp+^VGG-19/block4_conv1/BiasAdd/ReadVariableOp*^VGG-19/block4_conv1/Conv2D/ReadVariableOp+^VGG-19/block4_conv2/BiasAdd/ReadVariableOp*^VGG-19/block4_conv2/Conv2D/ReadVariableOp+^VGG-19/block4_conv3/BiasAdd/ReadVariableOp*^VGG-19/block4_conv3/Conv2D/ReadVariableOp+^VGG-19/block4_conv4/BiasAdd/ReadVariableOp*^VGG-19/block4_conv4/Conv2D/ReadVariableOp+^VGG-19/block5_conv1/BiasAdd/ReadVariableOp*^VGG-19/block5_conv1/Conv2D/ReadVariableOp+^VGG-19/block5_conv2/BiasAdd/ReadVariableOp*^VGG-19/block5_conv2/Conv2D/ReadVariableOp+^VGG-19/block5_conv3/BiasAdd/ReadVariableOp*^VGG-19/block5_conv3/Conv2D/ReadVariableOp+^VGG-19/block5_conv4/BiasAdd/ReadVariableOp*^VGG-19/block5_conv4/Conv2D/ReadVariableOp$^block6_conv1/BiasAdd/ReadVariableOp#^block6_conv1/Conv2D/ReadVariableOp$^block6_conv2/BiasAdd/ReadVariableOp#^block6_conv2/Conv2D/ReadVariableOp+^block7_conv1_column/BiasAdd/ReadVariableOp*^block7_conv1_column/Conv2D/ReadVariableOp+^block8_conv1_column/BiasAdd/ReadVariableOp*^block8_conv1_column/Conv2D/ReadVariableOp%^column_output/BiasAdd/ReadVariableOp.^column_output/conv2d_transpose/ReadVariableOp#^conv7_table/BiasAdd/ReadVariableOp"^conv7_table/Conv2D/ReadVariableOp$^table_output/BiasAdd/ReadVariableOp-^table_output/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€АА2

IdentityЌ

Identity_1Identitycolumn_output/BiasAdd:output:0+^VGG-19/block1_conv1/BiasAdd/ReadVariableOp*^VGG-19/block1_conv1/Conv2D/ReadVariableOp+^VGG-19/block1_conv2/BiasAdd/ReadVariableOp*^VGG-19/block1_conv2/Conv2D/ReadVariableOp+^VGG-19/block2_conv1/BiasAdd/ReadVariableOp*^VGG-19/block2_conv1/Conv2D/ReadVariableOp+^VGG-19/block2_conv2/BiasAdd/ReadVariableOp*^VGG-19/block2_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv1/BiasAdd/ReadVariableOp*^VGG-19/block3_conv1/Conv2D/ReadVariableOp+^VGG-19/block3_conv2/BiasAdd/ReadVariableOp*^VGG-19/block3_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv3/BiasAdd/ReadVariableOp*^VGG-19/block3_conv3/Conv2D/ReadVariableOp+^VGG-19/block3_conv4/BiasAdd/ReadVariableOp*^VGG-19/block3_conv4/Conv2D/ReadVariableOp+^VGG-19/block4_conv1/BiasAdd/ReadVariableOp*^VGG-19/block4_conv1/Conv2D/ReadVariableOp+^VGG-19/block4_conv2/BiasAdd/ReadVariableOp*^VGG-19/block4_conv2/Conv2D/ReadVariableOp+^VGG-19/block4_conv3/BiasAdd/ReadVariableOp*^VGG-19/block4_conv3/Conv2D/ReadVariableOp+^VGG-19/block4_conv4/BiasAdd/ReadVariableOp*^VGG-19/block4_conv4/Conv2D/ReadVariableOp+^VGG-19/block5_conv1/BiasAdd/ReadVariableOp*^VGG-19/block5_conv1/Conv2D/ReadVariableOp+^VGG-19/block5_conv2/BiasAdd/ReadVariableOp*^VGG-19/block5_conv2/Conv2D/ReadVariableOp+^VGG-19/block5_conv3/BiasAdd/ReadVariableOp*^VGG-19/block5_conv3/Conv2D/ReadVariableOp+^VGG-19/block5_conv4/BiasAdd/ReadVariableOp*^VGG-19/block5_conv4/Conv2D/ReadVariableOp$^block6_conv1/BiasAdd/ReadVariableOp#^block6_conv1/Conv2D/ReadVariableOp$^block6_conv2/BiasAdd/ReadVariableOp#^block6_conv2/Conv2D/ReadVariableOp+^block7_conv1_column/BiasAdd/ReadVariableOp*^block7_conv1_column/Conv2D/ReadVariableOp+^block8_conv1_column/BiasAdd/ReadVariableOp*^block8_conv1_column/Conv2D/ReadVariableOp%^column_output/BiasAdd/ReadVariableOp.^column_output/conv2d_transpose/ReadVariableOp#^conv7_table/BiasAdd/ReadVariableOp"^conv7_table/Conv2D/ReadVariableOp$^table_output/BiasAdd/ReadVariableOp-^table_output/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*VGG-19/block1_conv1/BiasAdd/ReadVariableOp*VGG-19/block1_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block1_conv1/Conv2D/ReadVariableOp)VGG-19/block1_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block1_conv2/BiasAdd/ReadVariableOp*VGG-19/block1_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block1_conv2/Conv2D/ReadVariableOp)VGG-19/block1_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block2_conv1/BiasAdd/ReadVariableOp*VGG-19/block2_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block2_conv1/Conv2D/ReadVariableOp)VGG-19/block2_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block2_conv2/BiasAdd/ReadVariableOp*VGG-19/block2_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block2_conv2/Conv2D/ReadVariableOp)VGG-19/block2_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv1/BiasAdd/ReadVariableOp*VGG-19/block3_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv1/Conv2D/ReadVariableOp)VGG-19/block3_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv2/BiasAdd/ReadVariableOp*VGG-19/block3_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv2/Conv2D/ReadVariableOp)VGG-19/block3_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv3/BiasAdd/ReadVariableOp*VGG-19/block3_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv3/Conv2D/ReadVariableOp)VGG-19/block3_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv4/BiasAdd/ReadVariableOp*VGG-19/block3_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv4/Conv2D/ReadVariableOp)VGG-19/block3_conv4/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv1/BiasAdd/ReadVariableOp*VGG-19/block4_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv1/Conv2D/ReadVariableOp)VGG-19/block4_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv2/BiasAdd/ReadVariableOp*VGG-19/block4_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv2/Conv2D/ReadVariableOp)VGG-19/block4_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv3/BiasAdd/ReadVariableOp*VGG-19/block4_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv3/Conv2D/ReadVariableOp)VGG-19/block4_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv4/BiasAdd/ReadVariableOp*VGG-19/block4_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv4/Conv2D/ReadVariableOp)VGG-19/block4_conv4/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv1/BiasAdd/ReadVariableOp*VGG-19/block5_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv1/Conv2D/ReadVariableOp)VGG-19/block5_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv2/BiasAdd/ReadVariableOp*VGG-19/block5_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv2/Conv2D/ReadVariableOp)VGG-19/block5_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv3/BiasAdd/ReadVariableOp*VGG-19/block5_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv3/Conv2D/ReadVariableOp)VGG-19/block5_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv4/BiasAdd/ReadVariableOp*VGG-19/block5_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv4/Conv2D/ReadVariableOp)VGG-19/block5_conv4/Conv2D/ReadVariableOp2J
#block6_conv1/BiasAdd/ReadVariableOp#block6_conv1/BiasAdd/ReadVariableOp2H
"block6_conv1/Conv2D/ReadVariableOp"block6_conv1/Conv2D/ReadVariableOp2J
#block6_conv2/BiasAdd/ReadVariableOp#block6_conv2/BiasAdd/ReadVariableOp2H
"block6_conv2/Conv2D/ReadVariableOp"block6_conv2/Conv2D/ReadVariableOp2X
*block7_conv1_column/BiasAdd/ReadVariableOp*block7_conv1_column/BiasAdd/ReadVariableOp2V
)block7_conv1_column/Conv2D/ReadVariableOp)block7_conv1_column/Conv2D/ReadVariableOp2X
*block8_conv1_column/BiasAdd/ReadVariableOp*block8_conv1_column/BiasAdd/ReadVariableOp2V
)block8_conv1_column/Conv2D/ReadVariableOp)block8_conv1_column/Conv2D/ReadVariableOp2L
$column_output/BiasAdd/ReadVariableOp$column_output/BiasAdd/ReadVariableOp2^
-column_output/conv2d_transpose/ReadVariableOp-column_output/conv2d_transpose/ReadVariableOp2H
"conv7_table/BiasAdd/ReadVariableOp"conv7_table/BiasAdd/ReadVariableOp2F
!conv7_table/Conv2D/ReadVariableOp!conv7_table/Conv2D/ReadVariableOp2J
#table_output/BiasAdd/ReadVariableOp#table_output/BiasAdd/ReadVariableOp2\
,table_output/conv2d_transpose/ReadVariableOp,table_output/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
÷
J
.__inference_up_sampling2d_2_layer_call_fn_8648

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_86422
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
“
§
,__inference_block5_conv3_layer_call_fn_11663

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_78032
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ґ
В
F__inference_block3_conv1_layer_call_and_return_conditional_losses_7631

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€@@А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
™
Й
M__inference_block8_conv1_column_layer_call_and_return_conditional_losses_8950

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ы
h
J__inference_block6_dropout1_layer_call_and_return_conditional_losses_11155

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
•
Y
-__inference_concatenate_1_layer_call_fn_11350
inputs_0
inputs_1
identityё
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_90112
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:€€€€€€€€€  А:l h
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:€€€€€€€€€  А
"
_user_specified_name
inputs/1
£
А
G__inference_block1_conv1_layer_call_and_return_conditional_losses_11374

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
Relu°
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€АА@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
•
a
E__inference_block1_pool_layer_call_and_return_conditional_losses_7489

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ґ
o
E__inference_concatenate_layer_call_and_return_conditional_losses_8991

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisИ
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€А2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:€€€€€€€€€А:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs:XT
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
∞
e
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_8680

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ќ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul’
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
half_pixel_centers(2
resize/ResizeNearestNeighbor§
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ъ
i
J__inference_block6_dropout1_layer_call_and_return_conditional_losses_11167

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †@2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeљ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?2
dropout/GreaterEqual/y«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ
Ы	
%__inference_VGG-19_layer_call_fn_8371
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:€€€€€€€€€  А:€€€€€€€€€А:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_VGG-19_layer_call_and_return_conditional_losses_82272
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

IdentityЫ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1Ы

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€АА
!
_user_specified_name	input_1
£
Г
G__inference_block4_conv1_layer_call_and_return_conditional_losses_11534

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
Ж
n
5__inference_block7_dropout_column_layer_call_fn_11271

inputs
identityИҐStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block7_dropout_column_layer_call_and_return_conditional_losses_91942
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
о
K
/__inference_block6_dropout2_layer_call_fn_11219

inputs
identity”
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_block6_dropout2_layer_call_and_return_conditional_losses_89132
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ђ
К
N__inference_block8_conv1_column_layer_call_and_return_conditional_losses_11302

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ђ
В
G__inference_block2_conv1_layer_call_and_return_conditional_losses_11414

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOp¶
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЛ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА2
ReluҐ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*2
_output_shapes 
:€€€€€€€€€ААА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА@
 
_user_specified_nameinputs
ъ
h
/__inference_block6_dropout1_layer_call_fn_11177

inputs
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_block6_dropout1_layer_call_and_return_conditional_losses_92602
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
а
Ђ
3__inference_block7_conv1_column_layer_call_fn_11244

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_block7_conv1_column_layer_call_and_return_conditional_losses_89262
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
∞
e
I__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_8699

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ќ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul’
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
half_pixel_centers(2
resize/ResizeNearestNeighbor§
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
•
a
E__inference_block2_pool_layer_call_and_return_conditional_losses_7501

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
–
£
+__inference_conv7_table_layer_call_fn_11291

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv7_table_layer_call_and_return_conditional_losses_89672
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
∞
e
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_8642

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ќ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul’
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
half_pixel_centers(2
resize/ResizeNearestNeighbor§
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
£
Г
G__inference_block5_conv1_layer_call_and_return_conditional_losses_11614

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ѕ
t
H__inference_concatenate_3_layer_call_and_return_conditional_losses_11357
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisК
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  А
2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:€€€€€€€€€  А:l h
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:€€€€€€€€€  А
"
_user_specified_name
inputs/1
…s
»
B__inference_tablenet_layer_call_and_return_conditional_losses_9814	
input%
vgg_19_9695:@
vgg_19_9697:@%
vgg_19_9699:@@
vgg_19_9701:@&
vgg_19_9703:@А
vgg_19_9705:	А'
vgg_19_9707:АА
vgg_19_9709:	А'
vgg_19_9711:АА
vgg_19_9713:	А'
vgg_19_9715:АА
vgg_19_9717:	А'
vgg_19_9719:АА
vgg_19_9721:	А'
vgg_19_9723:АА
vgg_19_9725:	А'
vgg_19_9727:АА
vgg_19_9729:	А'
vgg_19_9731:АА
vgg_19_9733:	А'
vgg_19_9735:АА
vgg_19_9737:	А'
vgg_19_9739:АА
vgg_19_9741:	А'
vgg_19_9743:АА
vgg_19_9745:	А'
vgg_19_9747:АА
vgg_19_9749:	А'
vgg_19_9751:АА
vgg_19_9753:	А'
vgg_19_9755:АА
vgg_19_9757:	А-
block6_conv1_9762:АА 
block6_conv1_9764:	А-
block6_conv2_9768:АА 
block6_conv2_9770:	А4
block7_conv1_column_9774:АА'
block7_conv1_column_9776:	А4
block8_conv1_column_9780:АА'
block8_conv1_column_9782:	А,
conv7_table_9785:АА
conv7_table_9787:	А-
column_output_9802:А
 
column_output_9804:,
table_output_9807:А

table_output_9809:
identity

identity_1ИҐVGG-19/StatefulPartitionedCallҐ$block6_conv1/StatefulPartitionedCallҐ$block6_conv2/StatefulPartitionedCallҐ+block7_conv1_column/StatefulPartitionedCallҐ+block8_conv1_column/StatefulPartitionedCallҐ%column_output/StatefulPartitionedCallҐ#conv7_table/StatefulPartitionedCallҐ$table_output/StatefulPartitionedCallЛ
VGG-19/StatefulPartitionedCallStatefulPartitionedCallinputvgg_19_9695vgg_19_9697vgg_19_9699vgg_19_9701vgg_19_9703vgg_19_9705vgg_19_9707vgg_19_9709vgg_19_9711vgg_19_9713vgg_19_9715vgg_19_9717vgg_19_9719vgg_19_9721vgg_19_9723vgg_19_9725vgg_19_9727vgg_19_9729vgg_19_9731vgg_19_9733vgg_19_9735vgg_19_9737vgg_19_9739vgg_19_9741vgg_19_9743vgg_19_9745vgg_19_9747vgg_19_9749vgg_19_9751vgg_19_9753vgg_19_9755vgg_19_9757*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:€€€€€€€€€  А:€€€€€€€€€А:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_VGG-19_layer_call_and_return_conditional_losses_78302 
VGG-19/StatefulPartitionedCallѕ
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall'VGG-19/StatefulPartitionedCall:output:2block6_conv1_9762block6_conv1_9764*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block6_conv1_layer_call_and_return_conditional_losses_88782&
$block6_conv1/StatefulPartitionedCallЪ
block6_dropout1/PartitionedCallPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_block6_dropout1_layer_call_and_return_conditional_losses_88892!
block6_dropout1/PartitionedCall–
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout1/PartitionedCall:output:0block6_conv2_9768block6_conv2_9770*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block6_conv2_layer_call_and_return_conditional_losses_89022&
$block6_conv2/StatefulPartitionedCallЪ
block6_dropout2/PartitionedCallPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_block6_dropout2_layer_call_and_return_conditional_losses_89132!
block6_dropout2/PartitionedCallу
+block7_conv1_column/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout2/PartitionedCall:output:0block7_conv1_column_9774block7_conv1_column_9776*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_block7_conv1_column_layer_call_and_return_conditional_losses_89262-
+block7_conv1_column/StatefulPartitionedCall≥
%block7_dropout_column/PartitionedCallPartitionedCall4block7_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block7_dropout_column_layer_call_and_return_conditional_losses_89372'
%block7_dropout_column/PartitionedCallщ
+block8_conv1_column/StatefulPartitionedCallStatefulPartitionedCall.block7_dropout_column/PartitionedCall:output:0block8_conv1_column_9780block8_conv1_column_9782*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_block8_conv1_column_layer_call_and_return_conditional_losses_89502-
+block8_conv1_column/StatefulPartitionedCallЋ
#conv7_table/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout2/PartitionedCall:output:0conv7_table_9785conv7_table_9787*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv7_table_layer_call_and_return_conditional_losses_89672%
#conv7_table/StatefulPartitionedCall≥
up_sampling2d_4/PartitionedCallPartitionedCall4block8_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_85852!
up_sampling2d_4/PartitionedCall•
up_sampling2d/PartitionedCallPartitionedCall,conv7_table/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_85662
up_sampling2d/PartitionedCallє
concatenate_2/PartitionedCallPartitionedCall(up_sampling2d_4/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_2_layer_call_and_return_conditional_losses_89822
concatenate_2/PartitionedCall±
concatenate/PartitionedCallPartitionedCall&up_sampling2d/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_89912
concatenate/PartitionedCall•
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_86232!
up_sampling2d_5/PartitionedCall£
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_86042!
up_sampling2d_1/PartitionedCallє
concatenate_3/PartitionedCallPartitionedCall(up_sampling2d_5/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_3_layer_call_and_return_conditional_losses_90022
concatenate_3/PartitionedCallє
concatenate_1/PartitionedCallPartitionedCall(up_sampling2d_1/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_90112
concatenate_1/PartitionedCall•
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_86612!
up_sampling2d_6/PartitionedCall•
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_86422!
up_sampling2d_2/PartitionedCallІ
up_sampling2d_7/PartitionedCallPartitionedCall(up_sampling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_86992!
up_sampling2d_7/PartitionedCallІ
up_sampling2d_3/PartitionedCallPartitionedCall(up_sampling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_86802!
up_sampling2d_3/PartitionedCallж
%column_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0column_output_9802column_output_9804*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_column_output_layer_call_and_return_conditional_losses_87832'
%column_output/StatefulPartitionedCallб
$table_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0table_output_9807table_output_9809*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_table_output_layer_call_and_return_conditional_losses_87392&
$table_output/StatefulPartitionedCallџ
IdentityIdentity-table_output/StatefulPartitionedCall:output:0^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identityа

Identity_1Identity.column_output/StatefulPartitionedCall:output:0^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
VGG-19/StatefulPartitionedCallVGG-19/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2Z
+block7_conv1_column/StatefulPartitionedCall+block7_conv1_column/StatefulPartitionedCall2Z
+block8_conv1_column/StatefulPartitionedCall+block8_conv1_column/StatefulPartitionedCall2N
%column_output/StatefulPartitionedCall%column_output/StatefulPartitionedCall2J
#conv7_table/StatefulPartitionedCall#conv7_table/StatefulPartitionedCall2L
$table_output/StatefulPartitionedCall$table_output/StatefulPartitionedCall:X T
1
_output_shapes
:€€€€€€€€€АА

_user_specified_nameinput
д
ё
(__inference_tablenet_layer_call_fn_10738

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИҐStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_tablenet_layer_call_and_return_conditional_losses_94962
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identityђ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
“
§
,__inference_block3_conv2_layer_call_fn_11483

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_76482
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€@@А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
Є
q
G__inference_concatenate_1_layer_call_and_return_conditional_losses_9011

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisИ
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  А
2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:€€€€€€€€€  А:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs:XT
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
Є
q
G__inference_concatenate_3_layer_call_and_return_conditional_losses_9002

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisИ
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  А
2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:€€€€€€€€€  А:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs:XT
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
а
№
'__inference_tablenet_layer_call_fn_9126	
input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИҐStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_tablenet_layer_call_and_return_conditional_losses_90292
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identityђ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:€€€€€€€€€АА

_user_specified_nameinput
“
§
,__inference_block4_conv1_layer_call_fn_11543

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_77002
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
£
А
G__inference_block1_conv2_layer_call_and_return_conditional_losses_11394

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@2
Relu°
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€АА@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА@
 
_user_specified_nameinputs
Ґ
В
F__inference_block5_conv4_layer_call_and_return_conditional_losses_7820

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
“
§
,__inference_block5_conv1_layer_call_fn_11623

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_77692
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
•
Y
-__inference_concatenate_3_layer_call_fn_11363
inputs_0
inputs_1
identityё
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_3_layer_call_and_return_conditional_losses_90022
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:€€€€€€€€€  А:l h
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:€€€€€€€€€  А
"
_user_specified_name
inputs/1
°
W
+__inference_concatenate_layer_call_fn_11324
inputs_0
inputs_1
identity№
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_89912
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:€€€€€€€€€А:l h
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/1
°
n
P__inference_block7_dropout_column_layer_call_and_return_conditional_losses_11249

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
а
Ђ
3__inference_block8_conv1_column_layer_call_fn_11311

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_block8_conv1_column_layer_call_and_return_conditional_losses_89502
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
£
Г
G__inference_block5_conv4_layer_call_and_return_conditional_losses_11674

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
÷
J
.__inference_up_sampling2d_1_layer_call_fn_8610

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_86042
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"ћL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*М
serving_defaultш
A
input8
serving_default_input:0€€€€€€€€€ААK
column_output:
StatefulPartitionedCall:0€€€€€€€€€ААJ
table_output:
StatefulPartitionedCall:1€€€€€€€€€ААtensorflow/serving/predict:»Н
ЯТ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
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
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer_with_weights-6
layer-22
layer_with_weights-7
layer-23
	optimizer
loss
regularization_losses
trainable_variables
	variables
	keras_api

signatures
≤_default_save_signature
+≥&call_and_return_all_conditional_losses
і__call__"∞М
_tf_keras_networkУМ{"name": "tablenet", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "tablenet", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "VGG-19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["block3_pool", 0, 0], ["block4_pool", 0, 0], ["block5_pool", 0, 0]]}, "name": "VGG-19", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block6_conv1", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block6_conv1", "inbound_nodes": [[["VGG-19", 1, 2, {}]]]}, {"class_name": "Dropout", "config": {"name": "block6_dropout1", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "name": "block6_dropout1", "inbound_nodes": [[["block6_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block6_conv2", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block6_conv2", "inbound_nodes": [[["block6_dropout1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "block6_dropout2", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "name": "block6_dropout2", "inbound_nodes": [[["block6_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block7_conv1_column", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block7_conv1_column", "inbound_nodes": [[["block6_dropout2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "block7_dropout_column", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "name": "block7_dropout_column", "inbound_nodes": [[["block7_conv1_column", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv7_table", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv7_table", "inbound_nodes": [[["block6_dropout2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block8_conv1_column", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block8_conv1_column", "inbound_nodes": [[["block7_dropout_column", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d", "inbound_nodes": [[["conv7_table", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_4", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_4", "inbound_nodes": [[["block8_conv1_column", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["up_sampling2d", 0, 0, {}], ["VGG-19", 1, 1, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["up_sampling2d_4", 0, 0, {}], ["VGG-19", 1, 1, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_1", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_5", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_5", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["up_sampling2d_1", 0, 0, {}], ["VGG-19", 1, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_3", "inbound_nodes": [[["up_sampling2d_5", 0, 0, {}], ["VGG-19", 1, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_2", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_6", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_6", "inbound_nodes": [[["concatenate_3", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_3", "inbound_nodes": [[["up_sampling2d_2", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_7", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_7", "inbound_nodes": [[["up_sampling2d_6", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "table_output", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "table_output", "inbound_nodes": [[["up_sampling2d_3", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "column_output", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "column_output", "inbound_nodes": [[["up_sampling2d_7", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["table_output", 0, 0], ["column_output", 0, 0]]}, "shared_object_id": 92, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "float32", "input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "tablenet", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Functional", "config": {"name": "VGG-19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["block3_pool", 0, 0], ["block4_pool", 0, 0], ["block5_pool", 0, 0]]}, "name": "VGG-19", "inbound_nodes": [[["input", 0, 0, {}]]], "shared_object_id": 55}, {"class_name": "Conv2D", "config": {"name": "block6_conv1", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 56}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 57}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block6_conv1", "inbound_nodes": [[["VGG-19", 1, 2, {}]]], "shared_object_id": 58}, {"class_name": "Dropout", "config": {"name": "block6_dropout1", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "name": "block6_dropout1", "inbound_nodes": [[["block6_conv1", 0, 0, {}]]], "shared_object_id": 59}, {"class_name": "Conv2D", "config": {"name": "block6_conv2", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block6_conv2", "inbound_nodes": [[["block6_dropout1", 0, 0, {}]]], "shared_object_id": 62}, {"class_name": "Dropout", "config": {"name": "block6_dropout2", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "name": "block6_dropout2", "inbound_nodes": [[["block6_conv2", 0, 0, {}]]], "shared_object_id": 63}, {"class_name": "Conv2D", "config": {"name": "block7_conv1_column", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 64}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 65}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block7_conv1_column", "inbound_nodes": [[["block6_dropout2", 0, 0, {}]]], "shared_object_id": 66}, {"class_name": "Dropout", "config": {"name": "block7_dropout_column", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "name": "block7_dropout_column", "inbound_nodes": [[["block7_conv1_column", 0, 0, {}]]], "shared_object_id": 67}, {"class_name": "Conv2D", "config": {"name": "conv7_table", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 68}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 69}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv7_table", "inbound_nodes": [[["block6_dropout2", 0, 0, {}]]], "shared_object_id": 70}, {"class_name": "Conv2D", "config": {"name": "block8_conv1_column", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 71}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 72}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block8_conv1_column", "inbound_nodes": [[["block7_dropout_column", 0, 0, {}]]], "shared_object_id": 73}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d", "inbound_nodes": [[["conv7_table", 0, 0, {}]]], "shared_object_id": 74}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_4", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_4", "inbound_nodes": [[["block8_conv1_column", 0, 0, {}]]], "shared_object_id": 75}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["up_sampling2d", 0, 0, {}], ["VGG-19", 1, 1, {}]]], "shared_object_id": 76}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["up_sampling2d_4", 0, 0, {}], ["VGG-19", 1, 1, {}]]], "shared_object_id": 77}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_1", "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 78}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_5", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_5", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 79}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["up_sampling2d_1", 0, 0, {}], ["VGG-19", 1, 0, {}]]], "shared_object_id": 80}, {"class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_3", "inbound_nodes": [[["up_sampling2d_5", 0, 0, {}], ["VGG-19", 1, 0, {}]]], "shared_object_id": 81}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_2", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 82}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_6", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_6", "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 83}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_3", "inbound_nodes": [[["up_sampling2d_2", 0, 0, {}]]], "shared_object_id": 84}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_7", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_7", "inbound_nodes": [[["up_sampling2d_6", 0, 0, {}]]], "shared_object_id": 85}, {"class_name": "Conv2DTranspose", "config": {"name": "table_output", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 86}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 87}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "table_output", "inbound_nodes": [[["up_sampling2d_3", 0, 0, {}]]], "shared_object_id": 88}, {"class_name": "Conv2DTranspose", "config": {"name": "column_output", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 89}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 90}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "column_output", "inbound_nodes": [[["up_sampling2d_7", 0, 0, {}]]], "shared_object_id": 91}], "input_layers": [["input", 0, 0]], "output_layers": [["table_output", 0, 0], ["column_output", 0, 0]]}}, "training_config": {"loss": {"table_output": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}, "shared_object_id": 95}, "column_output": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}, "shared_object_id": 94}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "table_output_accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 96}], [{"class_name": "MeanMetricWrapper", "config": {"name": "column_output_accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 97}]], "weighted_metrics": null, "loss_weights": {"table_output": 1.0, "column_output": 1.0}, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-08, "amsgrad": false}}}}
щ"ц
_tf_keras_input_layer÷{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}
‘ф
 layer-0
!layer_with_weights-0
!layer-1
"layer_with_weights-1
"layer-2
#layer-3
$layer_with_weights-2
$layer-4
%layer_with_weights-3
%layer-5
&layer-6
'layer_with_weights-4
'layer-7
(layer_with_weights-5
(layer-8
)layer_with_weights-6
)layer-9
*layer_with_weights-7
*layer-10
+layer-11
,layer_with_weights-8
,layer-12
-layer_with_weights-9
-layer-13
.layer_with_weights-10
.layer-14
/layer_with_weights-11
/layer-15
0layer-16
1layer_with_weights-12
1layer-17
2layer_with_weights-13
2layer-18
3layer_with_weights-14
3layer-19
4layer_with_weights-15
4layer-20
5layer-21
6regularization_losses
7trainable_variables
8	variables
9	keras_api
+µ&call_and_return_all_conditional_losses
ґ__call__"тн
_tf_keras_network’н{"name": "VGG-19", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "VGG-19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["block3_pool", 0, 0], ["block4_pool", 0, 0], ["block5_pool", 0, 0]]}, "inbound_nodes": [[["input", 0, 0, {}]]], "shared_object_id": 55, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "VGG-19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]], "shared_object_id": 18}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]], "shared_object_id": 27}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]], "shared_object_id": 31}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]], "shared_object_id": 34}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]], "shared_object_id": 37}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 38}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]], "shared_object_id": 40}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]], "shared_object_id": 41}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]], "shared_object_id": 44}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 45}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]], "shared_object_id": 47}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 48}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 49}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]], "shared_object_id": 50}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 51}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 52}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]], "shared_object_id": 53}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]], "shared_object_id": 54}], "input_layers": [["input_1", 0, 0]], "output_layers": [["block3_pool", 0, 0], ["block4_pool", 0, 0], ["block5_pool", 0, 0]]}}}
Й

:kernel
;bias
<regularization_losses
=trainable_variables
>	variables
?	keras_api
+Ј&call_and_return_all_conditional_losses
Є__call__"в	
_tf_keras_layer»	{"name": "block6_conv1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block6_conv1", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 56}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 57}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["VGG-19", 1, 2, {}]]], "shared_object_id": 58, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 99}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 512]}}
Љ
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
+є&call_and_return_all_conditional_losses
Ї__call__"Ђ
_tf_keras_layerС{"name": "block6_dropout1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "block6_dropout1", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "inbound_nodes": [[["block6_conv1", 0, 0, {}]]], "shared_object_id": 59}
У

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
+ї&call_and_return_all_conditional_losses
Љ__call__"м	
_tf_keras_layer“	{"name": "block6_conv2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block6_conv2", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block6_dropout1", 0, 0, {}]]], "shared_object_id": 62, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 100}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 512]}}
Љ
Jregularization_losses
Ktrainable_variables
L	variables
M	keras_api
+љ&call_and_return_all_conditional_losses
Њ__call__"Ђ
_tf_keras_layerС{"name": "block6_dropout2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "block6_dropout2", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "inbound_nodes": [[["block6_conv2", 0, 0, {}]]], "shared_object_id": 63}
°

Nkernel
Obias
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
+њ&call_and_return_all_conditional_losses
ј__call__"ъ	
_tf_keras_layerа	{"name": "block7_conv1_column", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block7_conv1_column", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 64}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 65}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block6_dropout2", 0, 0, {}]]], "shared_object_id": 66, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 101}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 512]}}
ѕ
Tregularization_losses
Utrainable_variables
V	variables
W	keras_api
+Ѕ&call_and_return_all_conditional_losses
¬__call__"Њ
_tf_keras_layer§{"name": "block7_dropout_column", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "block7_dropout_column", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "inbound_nodes": [[["block7_conv1_column", 0, 0, {}]]], "shared_object_id": 67}
С

Xkernel
Ybias
Zregularization_losses
[trainable_variables
\	variables
]	keras_api
+√&call_and_return_all_conditional_losses
ƒ__call__"к	
_tf_keras_layer–	{"name": "conv7_table", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv7_table", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 68}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 69}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block6_dropout2", 0, 0, {}]]], "shared_object_id": 70, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 102}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 512]}}
І

^kernel
_bias
`regularization_losses
atrainable_variables
b	variables
c	keras_api
+≈&call_and_return_all_conditional_losses
∆__call__"А

_tf_keras_layerж	{"name": "block8_conv1_column", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block8_conv1_column", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 71}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 72}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block7_dropout_column", 0, 0, {}]]], "shared_object_id": 73, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 103}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 512]}}
®
dregularization_losses
etrainable_variables
f	variables
g	keras_api
+«&call_and_return_all_conditional_losses
»__call__"Ч
_tf_keras_layerэ{"name": "up_sampling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["conv7_table", 0, 0, {}]]], "shared_object_id": 74, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 104}}
і
hregularization_losses
itrainable_variables
j	variables
k	keras_api
+…&call_and_return_all_conditional_losses
 __call__"£
_tf_keras_layerЙ{"name": "up_sampling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_4", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["block8_conv1_column", 0, 0, {}]]], "shared_object_id": 75, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 105}}
љ
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
+Ћ&call_and_return_all_conditional_losses
ћ__call__"ђ
_tf_keras_layerТ{"name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["up_sampling2d", 0, 0, {}], ["VGG-19", 1, 1, {}]]], "shared_object_id": 76, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 16, 16, 512]}, {"class_name": "TensorShape", "items": [null, 16, 16, 512]}]}
√
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
+Ќ&call_and_return_all_conditional_losses
ќ__call__"≤
_tf_keras_layerШ{"name": "concatenate_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["up_sampling2d_4", 0, 0, {}], ["VGG-19", 1, 1, {}]]], "shared_object_id": 77, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 16, 16, 512]}, {"class_name": "TensorShape", "items": [null, 16, 16, 512]}]}
ђ
tregularization_losses
utrainable_variables
v	variables
w	keras_api
+ѕ&call_and_return_all_conditional_losses
–__call__"Ы
_tf_keras_layerБ{"name": "up_sampling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 78, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 106}}
Ѓ
xregularization_losses
ytrainable_variables
z	variables
{	keras_api
+—&call_and_return_all_conditional_losses
“__call__"Э
_tf_keras_layerГ{"name": "up_sampling2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_5", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 79, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 107}}
ƒ
|regularization_losses
}trainable_variables
~	variables
	keras_api
+”&call_and_return_all_conditional_losses
‘__call__"≥
_tf_keras_layerЩ{"name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["up_sampling2d_1", 0, 0, {}], ["VGG-19", 1, 0, {}]]], "shared_object_id": 80, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32, 32, 1024]}, {"class_name": "TensorShape", "items": [null, 32, 32, 256]}]}
»
Аregularization_losses
Бtrainable_variables
В	variables
Г	keras_api
+’&call_and_return_all_conditional_losses
÷__call__"≥
_tf_keras_layerЩ{"name": "concatenate_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["up_sampling2d_5", 0, 0, {}], ["VGG-19", 1, 0, {}]]], "shared_object_id": 81, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32, 32, 1024]}, {"class_name": "TensorShape", "items": [null, 32, 32, 256]}]}
≤
Дregularization_losses
Еtrainable_variables
Ж	variables
З	keras_api
+„&call_and_return_all_conditional_losses
Ў__call__"Э
_tf_keras_layerГ{"name": "up_sampling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 82, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 108}}
≤
Иregularization_losses
Йtrainable_variables
К	variables
Л	keras_api
+ў&call_and_return_all_conditional_losses
Џ__call__"Э
_tf_keras_layerГ{"name": "up_sampling2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_6", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 83, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 109}}
і
Мregularization_losses
Нtrainable_variables
О	variables
П	keras_api
+џ&call_and_return_all_conditional_losses
№__call__"Я
_tf_keras_layerЕ{"name": "up_sampling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["up_sampling2d_2", 0, 0, {}]]], "shared_object_id": 84, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 110}}
і
Рregularization_losses
Сtrainable_variables
Т	variables
У	keras_api
+Ё&call_and_return_all_conditional_losses
ё__call__"Я
_tf_keras_layerЕ{"name": "up_sampling2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_7", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["up_sampling2d_6", 0, 0, {}]]], "shared_object_id": 85, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 111}}
њ
Фkernel
	Хbias
Цregularization_losses
Чtrainable_variables
Ш	variables
Щ	keras_api
+я&call_and_return_all_conditional_losses
а__call__"Т

_tf_keras_layerш	{"name": "table_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "table_output", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 86}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 87}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["up_sampling2d_3", 0, 0, {}]]], "shared_object_id": 88, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 1280}}, "shared_object_id": 112}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 1280]}}
Ѕ
Ъkernel
	Ыbias
Ьregularization_losses
Эtrainable_variables
Ю	variables
Я	keras_api
+б&call_and_return_all_conditional_losses
в__call__"Ф

_tf_keras_layerъ	{"name": "column_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "column_output", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 89}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 90}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["up_sampling2d_7", 0, 0, {}]]], "shared_object_id": 91, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 1280}}, "shared_object_id": 113}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 1280]}}
ш
	†iter
°beta_1
Ґbeta_2

£decay
§learning_rate:mЦ;mЧDmШEmЩNmЪOmЫXmЬYmЭ^mЮ_mЯ	Фm†	Хm°	ЪmҐ	Ыm£:v§;v•Dv¶EvІNv®Ov©Xv™YvЂ^vђ_v≠	ФvЃ	Хvѓ	Ъv∞	Ыv±"
	optimizer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
К
:0
;1
D2
E3
N4
O5
X6
Y7
^8
_9
Ф10
Х11
Ъ12
Ы13"
trackable_list_wrapper
™
•0
¶1
І2
®3
©4
™5
Ђ6
ђ7
≠8
Ѓ9
ѓ10
∞11
±12
≤13
≥14
і15
µ16
ґ17
Ј18
Є19
є20
Ї21
ї22
Љ23
љ24
Њ25
њ26
ј27
Ѕ28
¬29
√30
ƒ31
:32
;33
D34
E35
N36
O37
X38
Y39
^40
_41
Ф42
Х43
Ъ44
Ы45"
trackable_list_wrapper
”
regularization_losses
≈non_trainable_variables
trainable_variables
∆metrics
 «layer_regularization_losses
»layer_metrics
…layers
	variables
і__call__
≤_default_save_signature
+≥&call_and_return_all_conditional_losses
'≥"call_and_return_conditional_losses"
_generic_user_object
-
гserving_default"
signature_map
Х
 _init_input_shape"ъ
_tf_keras_input_layerЏ{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
О
•kernel
	¶bias
Ћregularization_losses
ћtrainable_variables
Ќ	variables
ќ	keras_api
+д&call_and_return_all_conditional_losses
е__call__"б	
_tf_keras_layer«	{"name": "block1_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 114}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}
Х
Іkernel
	®bias
ѕregularization_losses
–trainable_variables
—	variables
“	keras_api
+ж&call_and_return_all_conditional_losses
з__call__"и	
_tf_keras_layerќ	{"name": "block1_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block1_conv1", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 115}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 64]}}
а
”regularization_losses
‘trainable_variables
’	variables
÷	keras_api
+и&call_and_return_all_conditional_losses
й__call__"Ћ
_tf_keras_layer±{"name": "block1_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block1_conv2", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 116}}
Ч
©kernel
	™bias
„regularization_losses
Ўtrainable_variables
ў	variables
Џ	keras_api
+к&call_and_return_all_conditional_losses
л__call__"к	
_tf_keras_layer–	{"name": "block2_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block1_pool", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 117}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 64]}}
Ы
Ђkernel
	ђbias
џregularization_losses
№trainable_variables
Ё	variables
ё	keras_api
+м&call_and_return_all_conditional_losses
н__call__"о	
_tf_keras_layer‘	{"name": "block2_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block2_conv1", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 118}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 128]}}
б
яregularization_losses
аtrainable_variables
б	variables
в	keras_api
+о&call_and_return_all_conditional_losses
п__call__"ћ
_tf_keras_layer≤{"name": "block2_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block2_conv2", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 119}}
Ш
≠kernel
	Ѓbias
гregularization_losses
дtrainable_variables
е	variables
ж	keras_api
+р&call_and_return_all_conditional_losses
с__call__"л	
_tf_keras_layer—	{"name": "block3_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block2_pool", 0, 0, {}]]], "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 120}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 128]}}
Щ
ѓkernel
	∞bias
зregularization_losses
иtrainable_variables
й	variables
к	keras_api
+т&call_and_return_all_conditional_losses
у__call__"м	
_tf_keras_layer“	{"name": "block3_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block3_conv1", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 121}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 256]}}
Щ
±kernel
	≤bias
лregularization_losses
мtrainable_variables
н	variables
о	keras_api
+ф&call_and_return_all_conditional_losses
х__call__"м	
_tf_keras_layer“	{"name": "block3_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block3_conv2", 0, 0, {}]]], "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 122}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 256]}}
Щ
≥kernel
	іbias
пregularization_losses
рtrainable_variables
с	variables
т	keras_api
+ц&call_and_return_all_conditional_losses
ч__call__"м	
_tf_keras_layer“	{"name": "block3_conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block3_conv3", 0, 0, {}]]], "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 123}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 256]}}
б
уregularization_losses
фtrainable_variables
х	variables
ц	keras_api
+ш&call_and_return_all_conditional_losses
щ__call__"ћ
_tf_keras_layer≤{"name": "block3_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block3_conv4", 0, 0, {}]]], "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 124}}
Ш
µkernel
	ґbias
чregularization_losses
шtrainable_variables
щ	variables
ъ	keras_api
+ъ&call_and_return_all_conditional_losses
ы__call__"л	
_tf_keras_layer—	{"name": "block4_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block3_pool", 0, 0, {}]]], "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 125}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 256]}}
Щ
Јkernel
	Єbias
ыregularization_losses
ьtrainable_variables
э	variables
ю	keras_api
+ь&call_and_return_all_conditional_losses
э__call__"м	
_tf_keras_layer“	{"name": "block4_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block4_conv1", 0, 0, {}]]], "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 126}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 512]}}
Щ
єkernel
	Їbias
€regularization_losses
Аtrainable_variables
Б	variables
В	keras_api
+ю&call_and_return_all_conditional_losses
€__call__"м	
_tf_keras_layer“	{"name": "block4_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block4_conv2", 0, 0, {}]]], "shared_object_id": 37, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 127}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 512]}}
Щ
їkernel
	Љbias
Гregularization_losses
Дtrainable_variables
Е	variables
Ж	keras_api
+А&call_and_return_all_conditional_losses
Б__call__"м	
_tf_keras_layer“	{"name": "block4_conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 38}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block4_conv3", 0, 0, {}]]], "shared_object_id": 40, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 128}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 512]}}
б
Зregularization_losses
Иtrainable_variables
Й	variables
К	keras_api
+В&call_and_return_all_conditional_losses
Г__call__"ћ
_tf_keras_layer≤{"name": "block4_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block4_conv4", 0, 0, {}]]], "shared_object_id": 41, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 129}}
Ш
љkernel
	Њbias
Лregularization_losses
Мtrainable_variables
Н	variables
О	keras_api
+Д&call_and_return_all_conditional_losses
Е__call__"л	
_tf_keras_layer—	{"name": "block5_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block4_pool", 0, 0, {}]]], "shared_object_id": 44, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 130}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 512]}}
Щ
њkernel
	јbias
Пregularization_losses
Рtrainable_variables
С	variables
Т	keras_api
+Ж&call_and_return_all_conditional_losses
З__call__"м	
_tf_keras_layer“	{"name": "block5_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 45}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block5_conv1", 0, 0, {}]]], "shared_object_id": 47, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 131}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 512]}}
Щ
Ѕkernel
	¬bias
Уregularization_losses
Фtrainable_variables
Х	variables
Ц	keras_api
+И&call_and_return_all_conditional_losses
Й__call__"м	
_tf_keras_layer“	{"name": "block5_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 48}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 49}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block5_conv2", 0, 0, {}]]], "shared_object_id": 50, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 132}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 512]}}
Щ
√kernel
	ƒbias
Чregularization_losses
Шtrainable_variables
Щ	variables
Ъ	keras_api
+К&call_and_return_all_conditional_losses
Л__call__"м	
_tf_keras_layer“	{"name": "block5_conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 51}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 52}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block5_conv3", 0, 0, {}]]], "shared_object_id": 53, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 133}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 512]}}
б
Ыregularization_losses
Ьtrainable_variables
Э	variables
Ю	keras_api
+М&call_and_return_all_conditional_losses
Н__call__"ћ
_tf_keras_layer≤{"name": "block5_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block5_conv4", 0, 0, {}]]], "shared_object_id": 54, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 134}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ґ
•0
¶1
І2
®3
©4
™5
Ђ6
ђ7
≠8
Ѓ9
ѓ10
∞11
±12
≤13
≥14
і15
µ16
ґ17
Ј18
Є19
є20
Ї21
ї22
Љ23
љ24
Њ25
њ26
ј27
Ѕ28
¬29
√30
ƒ31"
trackable_list_wrapper
µ
6regularization_losses
Яnon_trainable_variables
7trainable_variables
†metrics
 °layer_regularization_losses
Ґlayer_metrics
£layers
8	variables
ґ__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
_generic_user_object
/:-АА2block6_conv1/kernel
 :А2block6_conv1/bias
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
µ
<regularization_losses
§non_trainable_variables
=trainable_variables
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
®layers
>	variables
Є__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
@regularization_losses
©non_trainable_variables
Atrainable_variables
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
≠layers
B	variables
Ї__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
/:-АА2block6_conv2/kernel
 :А2block6_conv2/bias
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
µ
Fregularization_losses
Ѓnon_trainable_variables
Gtrainable_variables
ѓmetrics
 ∞layer_regularization_losses
±layer_metrics
≤layers
H	variables
Љ__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Jregularization_losses
≥non_trainable_variables
Ktrainable_variables
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
Јlayers
L	variables
Њ__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
6:4АА2block7_conv1_column/kernel
':%А2block7_conv1_column/bias
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
µ
Pregularization_losses
Єnon_trainable_variables
Qtrainable_variables
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
Љlayers
R	variables
ј__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Tregularization_losses
љnon_trainable_variables
Utrainable_variables
Њmetrics
 њlayer_regularization_losses
јlayer_metrics
Ѕlayers
V	variables
¬__call__
+Ѕ&call_and_return_all_conditional_losses
'Ѕ"call_and_return_conditional_losses"
_generic_user_object
.:,АА2conv7_table/kernel
:А2conv7_table/bias
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
µ
Zregularization_losses
¬non_trainable_variables
[trainable_variables
√metrics
 ƒlayer_regularization_losses
≈layer_metrics
∆layers
\	variables
ƒ__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses"
_generic_user_object
6:4АА2block8_conv1_column/kernel
':%А2block8_conv1_column/bias
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
µ
`regularization_losses
«non_trainable_variables
atrainable_variables
»metrics
 …layer_regularization_losses
 layer_metrics
Ћlayers
b	variables
∆__call__
+≈&call_and_return_all_conditional_losses
'≈"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
dregularization_losses
ћnon_trainable_variables
etrainable_variables
Ќmetrics
 ќlayer_regularization_losses
ѕlayer_metrics
–layers
f	variables
»__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
hregularization_losses
—non_trainable_variables
itrainable_variables
“metrics
 ”layer_regularization_losses
‘layer_metrics
’layers
j	variables
 __call__
+…&call_and_return_all_conditional_losses
'…"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
lregularization_losses
÷non_trainable_variables
mtrainable_variables
„metrics
 Ўlayer_regularization_losses
ўlayer_metrics
Џlayers
n	variables
ћ__call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
pregularization_losses
џnon_trainable_variables
qtrainable_variables
№metrics
 Ёlayer_regularization_losses
ёlayer_metrics
яlayers
r	variables
ќ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
tregularization_losses
аnon_trainable_variables
utrainable_variables
бmetrics
 вlayer_regularization_losses
гlayer_metrics
дlayers
v	variables
–__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
xregularization_losses
еnon_trainable_variables
ytrainable_variables
жmetrics
 зlayer_regularization_losses
иlayer_metrics
йlayers
z	variables
“__call__
+—&call_and_return_all_conditional_losses
'—"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
|regularization_losses
кnon_trainable_variables
}trainable_variables
лmetrics
 мlayer_regularization_losses
нlayer_metrics
оlayers
~	variables
‘__call__
+”&call_and_return_all_conditional_losses
'”"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Аregularization_losses
пnon_trainable_variables
Бtrainable_variables
рmetrics
 сlayer_regularization_losses
тlayer_metrics
уlayers
В	variables
÷__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Дregularization_losses
фnon_trainable_variables
Еtrainable_variables
хmetrics
 цlayer_regularization_losses
чlayer_metrics
шlayers
Ж	variables
Ў__call__
+„&call_and_return_all_conditional_losses
'„"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Иregularization_losses
щnon_trainable_variables
Йtrainable_variables
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
эlayers
К	variables
Џ__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Мregularization_losses
юnon_trainable_variables
Нtrainable_variables
€metrics
 Аlayer_regularization_losses
Бlayer_metrics
Вlayers
О	variables
№__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Рregularization_losses
Гnon_trainable_variables
Сtrainable_variables
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
Зlayers
Т	variables
ё__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
.:,А
2table_output/kernel
:2table_output/bias
 "
trackable_list_wrapper
0
Ф0
Х1"
trackable_list_wrapper
0
Ф0
Х1"
trackable_list_wrapper
Є
Цregularization_losses
Иnon_trainable_variables
Чtrainable_variables
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
Мlayers
Ш	variables
а__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
/:-А
2column_output/kernel
 :2column_output/bias
 "
trackable_list_wrapper
0
Ъ0
Ы1"
trackable_list_wrapper
0
Ъ0
Ы1"
trackable_list_wrapper
Є
Ьregularization_losses
Нnon_trainable_variables
Эtrainable_variables
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
Сlayers
Ю	variables
в__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.:,@А2block2_conv1/kernel
 :А2block2_conv1/bias
/:-АА2block2_conv2/kernel
 :А2block2_conv2/bias
/:-АА2block3_conv1/kernel
 :А2block3_conv1/bias
/:-АА2block3_conv2/kernel
 :А2block3_conv2/bias
/:-АА2block3_conv3/kernel
 :А2block3_conv3/bias
/:-АА2block3_conv4/kernel
 :А2block3_conv4/bias
/:-АА2block4_conv1/kernel
 :А2block4_conv1/bias
/:-АА2block4_conv2/kernel
 :А2block4_conv2/bias
/:-АА2block4_conv3/kernel
 :А2block4_conv3/bias
/:-АА2block4_conv4/kernel
 :А2block4_conv4/bias
/:-АА2block5_conv1/kernel
 :А2block5_conv1/bias
/:-АА2block5_conv2/kernel
 :А2block5_conv2/bias
/:-АА2block5_conv3/kernel
 :А2block5_conv3/bias
/:-АА2block5_conv4/kernel
 :А2block5_conv4/bias
ґ
•0
¶1
І2
®3
©4
™5
Ђ6
ђ7
≠8
Ѓ9
ѓ10
∞11
±12
≤13
≥14
і15
µ16
ґ17
Ј18
Є19
є20
Ї21
ї22
Љ23
љ24
Њ25
њ26
ј27
Ѕ28
¬29
√30
ƒ31"
trackable_list_wrapper
H
Т0
У1
Ф2
Х3
Ц4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
÷
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
17
18
19
20
21
22
23"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
•0
¶1"
trackable_list_wrapper
Є
Ћregularization_losses
Чnon_trainable_variables
ћtrainable_variables
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
Ыlayers
Ќ	variables
е__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
І0
®1"
trackable_list_wrapper
Є
ѕregularization_losses
Ьnon_trainable_variables
–trainable_variables
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
†layers
—	variables
з__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
”regularization_losses
°non_trainable_variables
‘trainable_variables
Ґmetrics
 £layer_regularization_losses
§layer_metrics
•layers
’	variables
й__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
©0
™1"
trackable_list_wrapper
Є
„regularization_losses
¶non_trainable_variables
Ўtrainable_variables
Іmetrics
 ®layer_regularization_losses
©layer_metrics
™layers
ў	variables
л__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ђ0
ђ1"
trackable_list_wrapper
Є
џregularization_losses
Ђnon_trainable_variables
№trainable_variables
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
ѓlayers
Ё	variables
н__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
яregularization_losses
∞non_trainable_variables
аtrainable_variables
±metrics
 ≤layer_regularization_losses
≥layer_metrics
іlayers
б	variables
п__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
≠0
Ѓ1"
trackable_list_wrapper
Є
гregularization_losses
µnon_trainable_variables
дtrainable_variables
ґmetrics
 Јlayer_regularization_losses
Єlayer_metrics
єlayers
е	variables
с__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
ѓ0
∞1"
trackable_list_wrapper
Є
зregularization_losses
Їnon_trainable_variables
иtrainable_variables
їmetrics
 Љlayer_regularization_losses
љlayer_metrics
Њlayers
й	variables
у__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
±0
≤1"
trackable_list_wrapper
Є
лregularization_losses
њnon_trainable_variables
мtrainable_variables
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
√layers
н	variables
х__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
≥0
і1"
trackable_list_wrapper
Є
пregularization_losses
ƒnon_trainable_variables
рtrainable_variables
≈metrics
 ∆layer_regularization_losses
«layer_metrics
»layers
с	variables
ч__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
уregularization_losses
…non_trainable_variables
фtrainable_variables
 metrics
 Ћlayer_regularization_losses
ћlayer_metrics
Ќlayers
х	variables
щ__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
µ0
ґ1"
trackable_list_wrapper
Є
чregularization_losses
ќnon_trainable_variables
шtrainable_variables
ѕmetrics
 –layer_regularization_losses
—layer_metrics
“layers
щ	variables
ы__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ј0
Є1"
trackable_list_wrapper
Є
ыregularization_losses
”non_trainable_variables
ьtrainable_variables
‘metrics
 ’layer_regularization_losses
÷layer_metrics
„layers
э	variables
э__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
є0
Ї1"
trackable_list_wrapper
Є
€regularization_losses
Ўnon_trainable_variables
Аtrainable_variables
ўmetrics
 Џlayer_regularization_losses
џlayer_metrics
№layers
Б	variables
€__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
ї0
Љ1"
trackable_list_wrapper
Є
Гregularization_losses
Ёnon_trainable_variables
Дtrainable_variables
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
бlayers
Е	variables
Б__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Зregularization_losses
вnon_trainable_variables
Иtrainable_variables
гmetrics
 дlayer_regularization_losses
еlayer_metrics
жlayers
Й	variables
Г__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
љ0
Њ1"
trackable_list_wrapper
Є
Лregularization_losses
зnon_trainable_variables
Мtrainable_variables
иmetrics
 йlayer_regularization_losses
кlayer_metrics
лlayers
Н	variables
Е__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
њ0
ј1"
trackable_list_wrapper
Є
Пregularization_losses
мnon_trainable_variables
Рtrainable_variables
нmetrics
 оlayer_regularization_losses
пlayer_metrics
рlayers
С	variables
З__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ѕ0
¬1"
trackable_list_wrapper
Є
Уregularization_losses
сnon_trainable_variables
Фtrainable_variables
тmetrics
 уlayer_regularization_losses
фlayer_metrics
хlayers
Х	variables
Й__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
√0
ƒ1"
trackable_list_wrapper
Є
Чregularization_losses
цnon_trainable_variables
Шtrainable_variables
чmetrics
 шlayer_regularization_losses
щlayer_metrics
ъlayers
Щ	variables
Л__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ыregularization_losses
ыnon_trainable_variables
Ьtrainable_variables
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
€layers
Э	variables
Н__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
ґ
•0
¶1
І2
®3
©4
™5
Ђ6
ђ7
≠8
Ѓ9
ѓ10
∞11
±12
≤13
≥14
і15
µ16
ґ17
Ј18
Є19
є20
Ї21
ї22
Љ23
љ24
Њ25
њ26
ј27
Ѕ28
¬29
√30
ƒ31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
∆
 0
!1
"2
#3
$4
%5
&6
'7
(8
)9
*10
+11
,12
-13
.14
/15
016
117
218
319
420
521"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
ў

Аtotal

Бcount
В	variables
Г	keras_api"Ю
_tf_keras_metricГ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 135}
у

Дtotal

Еcount
Ж	variables
З	keras_api"Є
_tf_keras_metricЭ{"class_name": "Mean", "name": "table_output_loss", "dtype": "float32", "config": {"name": "table_output_loss", "dtype": "float32"}, "shared_object_id": 136}
х

Иtotal

Йcount
К	variables
Л	keras_api"Ї
_tf_keras_metricЯ{"class_name": "Mean", "name": "column_output_loss", "dtype": "float32", "config": {"name": "column_output_loss", "dtype": "float32"}, "shared_object_id": 137}
љ

Мtotal

Нcount
О
_fn_kwargs
П	variables
Р	keras_api"с
_tf_keras_metric÷{"class_name": "MeanMetricWrapper", "name": "table_output_accuracy", "dtype": "float32", "config": {"name": "table_output_accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 96}
њ

Сtotal

Тcount
У
_fn_kwargs
Ф	variables
Х	keras_api"у
_tf_keras_metricЎ{"class_name": "MeanMetricWrapper", "name": "column_output_accuracy", "dtype": "float32", "config": {"name": "column_output_accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 97}
0
•0
¶1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
І0
®1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
0
©0
™1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
Ђ0
ђ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
0
≠0
Ѓ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
ѓ0
∞1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
±0
≤1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
≥0
і1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
0
µ0
ґ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
Ј0
Є1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
є0
Ї1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
ї0
Љ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
0
љ0
Њ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
њ0
ј1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
Ѕ0
¬1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
√0
ƒ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
:  (2total
:  (2count
0
А0
Б1"
trackable_list_wrapper
.
В	variables"
_generic_user_object
:  (2total
:  (2count
0
Д0
Е1"
trackable_list_wrapper
.
Ж	variables"
_generic_user_object
:  (2total
:  (2count
0
И0
Й1"
trackable_list_wrapper
.
К	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
М0
Н1"
trackable_list_wrapper
.
П	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
С0
Т1"
trackable_list_wrapper
.
Ф	variables"
_generic_user_object
4:2АА2Adam/block6_conv1/kernel/m
%:#А2Adam/block6_conv1/bias/m
4:2АА2Adam/block6_conv2/kernel/m
%:#А2Adam/block6_conv2/bias/m
;:9АА2!Adam/block7_conv1_column/kernel/m
,:*А2Adam/block7_conv1_column/bias/m
3:1АА2Adam/conv7_table/kernel/m
$:"А2Adam/conv7_table/bias/m
;:9АА2!Adam/block8_conv1_column/kernel/m
,:*А2Adam/block8_conv1_column/bias/m
3:1А
2Adam/table_output/kernel/m
$:"2Adam/table_output/bias/m
4:2А
2Adam/column_output/kernel/m
%:#2Adam/column_output/bias/m
4:2АА2Adam/block6_conv1/kernel/v
%:#А2Adam/block6_conv1/bias/v
4:2АА2Adam/block6_conv2/kernel/v
%:#А2Adam/block6_conv2/bias/v
;:9АА2!Adam/block7_conv1_column/kernel/v
,:*А2Adam/block7_conv1_column/bias/v
3:1АА2Adam/conv7_table/kernel/v
$:"А2Adam/conv7_table/bias/v
;:9АА2!Adam/block8_conv1_column/kernel/v
,:*А2Adam/block8_conv1_column/bias/v
3:1А
2Adam/table_output/kernel/v
$:"2Adam/table_output/bias/v
4:2А
2Adam/column_output/kernel/v
%:#2Adam/column_output/bias/v
е2в
__inference__wrapped_model_7483Њ
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *.Ґ+
)К&
input€€€€€€€€€АА
Ў2’
C__inference_tablenet_layer_call_and_return_conditional_losses_10281
C__inference_tablenet_layer_call_and_return_conditional_losses_10540
B__inference_tablenet_layer_call_and_return_conditional_losses_9814
B__inference_tablenet_layer_call_and_return_conditional_losses_9936ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
м2й
'__inference_tablenet_layer_call_fn_9126
(__inference_tablenet_layer_call_fn_10639
(__inference_tablenet_layer_call_fn_10738
'__inference_tablenet_layer_call_fn_9692ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
–2Ќ
A__inference_VGG-19_layer_call_and_return_conditional_losses_10861
A__inference_VGG-19_layer_call_and_return_conditional_losses_10984
@__inference_VGG-19_layer_call_and_return_conditional_losses_8462
@__inference_VGG-19_layer_call_and_return_conditional_losses_8553ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
д2б
%__inference_VGG-19_layer_call_fn_7901
&__inference_VGG-19_layer_call_fn_11057
&__inference_VGG-19_layer_call_fn_11130
%__inference_VGG-19_layer_call_fn_8371ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
с2о
G__inference_block6_conv1_layer_call_and_return_conditional_losses_11141Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block6_conv1_layer_call_fn_11150Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
J__inference_block6_dropout1_layer_call_and_return_conditional_losses_11155
J__inference_block6_dropout1_layer_call_and_return_conditional_losses_11167і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ь2Щ
/__inference_block6_dropout1_layer_call_fn_11172
/__inference_block6_dropout1_layer_call_fn_11177і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
с2о
G__inference_block6_conv2_layer_call_and_return_conditional_losses_11188Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block6_conv2_layer_call_fn_11197Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
J__inference_block6_dropout2_layer_call_and_return_conditional_losses_11202
J__inference_block6_dropout2_layer_call_and_return_conditional_losses_11214і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ь2Щ
/__inference_block6_dropout2_layer_call_fn_11219
/__inference_block6_dropout2_layer_call_fn_11224і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ш2х
N__inference_block7_conv1_column_layer_call_and_return_conditional_losses_11235Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ё2Џ
3__inference_block7_conv1_column_layer_call_fn_11244Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ё2џ
P__inference_block7_dropout_column_layer_call_and_return_conditional_losses_11249
P__inference_block7_dropout_column_layer_call_and_return_conditional_losses_11261і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®2•
5__inference_block7_dropout_column_layer_call_fn_11266
5__inference_block7_dropout_column_layer_call_fn_11271і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
р2н
F__inference_conv7_table_layer_call_and_return_conditional_losses_11282Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
’2“
+__inference_conv7_table_layer_call_fn_11291Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ш2х
N__inference_block8_conv1_column_layer_call_and_return_conditional_losses_11302Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ё2Џ
3__inference_block8_conv1_column_layer_call_fn_11311Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѓ2ђ
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_8566а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ф2С
,__inference_up_sampling2d_layer_call_fn_8572а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
±2Ѓ
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_8585а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ц2У
.__inference_up_sampling2d_4_layer_call_fn_8591а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
р2н
F__inference_concatenate_layer_call_and_return_conditional_losses_11318Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
’2“
+__inference_concatenate_layer_call_fn_11324Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
т2п
H__inference_concatenate_2_layer_call_and_return_conditional_losses_11331Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_concatenate_2_layer_call_fn_11337Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
±2Ѓ
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_8604а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ц2У
.__inference_up_sampling2d_1_layer_call_fn_8610а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
±2Ѓ
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_8623а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ц2У
.__inference_up_sampling2d_5_layer_call_fn_8629а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
т2п
H__inference_concatenate_1_layer_call_and_return_conditional_losses_11344Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_concatenate_1_layer_call_fn_11350Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
т2п
H__inference_concatenate_3_layer_call_and_return_conditional_losses_11357Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_concatenate_3_layer_call_fn_11363Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
±2Ѓ
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_8642а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ц2У
.__inference_up_sampling2d_2_layer_call_fn_8648а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
±2Ѓ
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_8661а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ц2У
.__inference_up_sampling2d_6_layer_call_fn_8667а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
±2Ѓ
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_8680а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ц2У
.__inference_up_sampling2d_3_layer_call_fn_8686а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
±2Ѓ
I__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_8699а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ц2У
.__inference_up_sampling2d_7_layer_call_fn_8705а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
¶2£
F__inference_table_output_layer_call_and_return_conditional_losses_8739Ў
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *8Ґ5
3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А

Л2И
+__inference_table_output_layer_call_fn_8749Ў
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *8Ґ5
3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А

І2§
G__inference_column_output_layer_call_and_return_conditional_losses_8783Ў
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *8Ґ5
3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А

М2Й
,__inference_column_output_layer_call_fn_8793Ў
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *8Ґ5
3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А

»B≈
#__inference_signature_wrapper_10043input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block1_conv1_layer_call_and_return_conditional_losses_11374Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block1_conv1_layer_call_fn_11383Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block1_conv2_layer_call_and_return_conditional_losses_11394Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block1_conv2_layer_call_fn_11403Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≠2™
E__inference_block1_pool_layer_call_and_return_conditional_losses_7489а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Т2П
*__inference_block1_pool_layer_call_fn_7495а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
с2о
G__inference_block2_conv1_layer_call_and_return_conditional_losses_11414Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block2_conv1_layer_call_fn_11423Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block2_conv2_layer_call_and_return_conditional_losses_11434Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block2_conv2_layer_call_fn_11443Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≠2™
E__inference_block2_pool_layer_call_and_return_conditional_losses_7501а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Т2П
*__inference_block2_pool_layer_call_fn_7507а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
с2о
G__inference_block3_conv1_layer_call_and_return_conditional_losses_11454Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block3_conv1_layer_call_fn_11463Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block3_conv2_layer_call_and_return_conditional_losses_11474Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block3_conv2_layer_call_fn_11483Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block3_conv3_layer_call_and_return_conditional_losses_11494Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block3_conv3_layer_call_fn_11503Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block3_conv4_layer_call_and_return_conditional_losses_11514Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block3_conv4_layer_call_fn_11523Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≠2™
E__inference_block3_pool_layer_call_and_return_conditional_losses_7513а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Т2П
*__inference_block3_pool_layer_call_fn_7519а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
с2о
G__inference_block4_conv1_layer_call_and_return_conditional_losses_11534Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block4_conv1_layer_call_fn_11543Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block4_conv2_layer_call_and_return_conditional_losses_11554Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block4_conv2_layer_call_fn_11563Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block4_conv3_layer_call_and_return_conditional_losses_11574Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block4_conv3_layer_call_fn_11583Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block4_conv4_layer_call_and_return_conditional_losses_11594Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block4_conv4_layer_call_fn_11603Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≠2™
E__inference_block4_pool_layer_call_and_return_conditional_losses_7525а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Т2П
*__inference_block4_pool_layer_call_fn_7531а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
с2о
G__inference_block5_conv1_layer_call_and_return_conditional_losses_11614Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block5_conv1_layer_call_fn_11623Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block5_conv2_layer_call_and_return_conditional_losses_11634Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block5_conv2_layer_call_fn_11643Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block5_conv3_layer_call_and_return_conditional_losses_11654Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block5_conv3_layer_call_fn_11663Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block5_conv4_layer_call_and_return_conditional_losses_11674Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block5_conv4_layer_call_fn_11683Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≠2™
E__inference_block5_pool_layer_call_and_return_conditional_losses_7537а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Т2П
*__inference_block5_pool_layer_call_fn_7543а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘
A__inference_VGG-19_layer_call_and_return_conditional_losses_10861О@•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "ЖҐВ
{Ъx
&К#
0/0€€€€€€€€€  А
&К#
0/1€€€€€€€€€А
&К#
0/2€€€€€€€€€А
Ъ ‘
A__inference_VGG-19_layer_call_and_return_conditional_losses_10984О@•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "ЖҐВ
{Ъx
&К#
0/0€€€€€€€€€  А
&К#
0/1€€€€€€€€€А
&К#
0/2€€€€€€€€€А
Ъ ‘
@__inference_VGG-19_layer_call_and_return_conditional_losses_8462П@•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒBҐ?
8Ґ5
+К(
input_1€€€€€€€€€АА
p 

 
™ "ЖҐВ
{Ъx
&К#
0/0€€€€€€€€€  А
&К#
0/1€€€€€€€€€А
&К#
0/2€€€€€€€€€А
Ъ ‘
@__inference_VGG-19_layer_call_and_return_conditional_losses_8553П@•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒBҐ?
8Ґ5
+К(
input_1€€€€€€€€€АА
p

 
™ "ЖҐВ
{Ъx
&К#
0/0€€€€€€€€€  А
&К#
0/1€€€€€€€€€А
&К#
0/2€€€€€€€€€А
Ъ І
&__inference_VGG-19_layer_call_fn_11057ь@•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "uЪr
$К!
0€€€€€€€€€  А
$К!
1€€€€€€€€€А
$К!
2€€€€€€€€€АІ
&__inference_VGG-19_layer_call_fn_11130ь@•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "uЪr
$К!
0€€€€€€€€€  А
$К!
1€€€€€€€€€А
$К!
2€€€€€€€€€АІ
%__inference_VGG-19_layer_call_fn_7901э@•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒBҐ?
8Ґ5
+К(
input_1€€€€€€€€€АА
p 

 
™ "uЪr
$К!
0€€€€€€€€€  А
$К!
1€€€€€€€€€А
$К!
2€€€€€€€€€АІ
%__inference_VGG-19_layer_call_fn_8371э@•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒBҐ?
8Ґ5
+К(
input_1€€€€€€€€€АА
p

 
™ "uЪr
$К!
0€€€€€€€€€  А
$К!
1€€€€€€€€€А
$К!
2€€€€€€€€€Ањ
__inference__wrapped_model_7483ЫR•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒ:;DENO^_XYЪЫФХ8Ґ5
.Ґ+
)К&
input€€€€€€€€€АА
™ "К™Ж
B
column_output1К.
column_output€€€€€€€€€АА
@
table_output0К-
table_output€€€€€€€€€ААљ
G__inference_block1_conv1_layer_call_and_return_conditional_losses_11374r•¶9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "/Ґ,
%К"
0€€€€€€€€€АА@
Ъ Х
,__inference_block1_conv1_layer_call_fn_11383e•¶9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ ""К€€€€€€€€€АА@љ
G__inference_block1_conv2_layer_call_and_return_conditional_losses_11394rІ®9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА@
™ "/Ґ,
%К"
0€€€€€€€€€АА@
Ъ Х
,__inference_block1_conv2_layer_call_fn_11403eІ®9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА@
™ ""К€€€€€€€€€АА@и
E__inference_block1_pool_layer_call_and_return_conditional_losses_7489ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ј
*__inference_block1_pool_layer_call_fn_7495СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Њ
G__inference_block2_conv1_layer_call_and_return_conditional_losses_11414s©™9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА@
™ "0Ґ-
&К#
0€€€€€€€€€ААА
Ъ Ц
,__inference_block2_conv1_layer_call_fn_11423f©™9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА@
™ "#К €€€€€€€€€АААњ
G__inference_block2_conv2_layer_call_and_return_conditional_losses_11434tЂђ:Ґ7
0Ґ-
+К(
inputs€€€€€€€€€ААА
™ "0Ґ-
&К#
0€€€€€€€€€ААА
Ъ Ч
,__inference_block2_conv2_layer_call_fn_11443gЂђ:Ґ7
0Ґ-
+К(
inputs€€€€€€€€€ААА
™ "#К €€€€€€€€€АААи
E__inference_block2_pool_layer_call_and_return_conditional_losses_7501ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ј
*__inference_block2_pool_layer_call_fn_7507СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ї
G__inference_block3_conv1_layer_call_and_return_conditional_losses_11454p≠Ѓ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€@@А
™ ".Ґ+
$К!
0€€€€€€€€€@@А
Ъ У
,__inference_block3_conv1_layer_call_fn_11463c≠Ѓ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€@@А
™ "!К€€€€€€€€€@@Аї
G__inference_block3_conv2_layer_call_and_return_conditional_losses_11474pѓ∞8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€@@А
™ ".Ґ+
$К!
0€€€€€€€€€@@А
Ъ У
,__inference_block3_conv2_layer_call_fn_11483cѓ∞8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€@@А
™ "!К€€€€€€€€€@@Аї
G__inference_block3_conv3_layer_call_and_return_conditional_losses_11494p±≤8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€@@А
™ ".Ґ+
$К!
0€€€€€€€€€@@А
Ъ У
,__inference_block3_conv3_layer_call_fn_11503c±≤8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€@@А
™ "!К€€€€€€€€€@@Аї
G__inference_block3_conv4_layer_call_and_return_conditional_losses_11514p≥і8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€@@А
™ ".Ґ+
$К!
0€€€€€€€€€@@А
Ъ У
,__inference_block3_conv4_layer_call_fn_11523c≥і8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€@@А
™ "!К€€€€€€€€€@@Аи
E__inference_block3_pool_layer_call_and_return_conditional_losses_7513ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ј
*__inference_block3_pool_layer_call_fn_7519СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ї
G__inference_block4_conv1_layer_call_and_return_conditional_losses_11534pµґ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€  А
™ ".Ґ+
$К!
0€€€€€€€€€  А
Ъ У
,__inference_block4_conv1_layer_call_fn_11543cµґ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€  А
™ "!К€€€€€€€€€  Аї
G__inference_block4_conv2_layer_call_and_return_conditional_losses_11554pЈЄ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€  А
™ ".Ґ+
$К!
0€€€€€€€€€  А
Ъ У
,__inference_block4_conv2_layer_call_fn_11563cЈЄ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€  А
™ "!К€€€€€€€€€  Аї
G__inference_block4_conv3_layer_call_and_return_conditional_losses_11574pєЇ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€  А
™ ".Ґ+
$К!
0€€€€€€€€€  А
Ъ У
,__inference_block4_conv3_layer_call_fn_11583cєЇ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€  А
™ "!К€€€€€€€€€  Аї
G__inference_block4_conv4_layer_call_and_return_conditional_losses_11594pїЉ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€  А
™ ".Ґ+
$К!
0€€€€€€€€€  А
Ъ У
,__inference_block4_conv4_layer_call_fn_11603cїЉ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€  А
™ "!К€€€€€€€€€  Аи
E__inference_block4_pool_layer_call_and_return_conditional_losses_7525ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ј
*__inference_block4_pool_layer_call_fn_7531СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ї
G__inference_block5_conv1_layer_call_and_return_conditional_losses_11614pљЊ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ У
,__inference_block5_conv1_layer_call_fn_11623cљЊ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Аї
G__inference_block5_conv2_layer_call_and_return_conditional_losses_11634pњј8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ У
,__inference_block5_conv2_layer_call_fn_11643cњј8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Аї
G__inference_block5_conv3_layer_call_and_return_conditional_losses_11654pЅ¬8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ У
,__inference_block5_conv3_layer_call_fn_11663cЅ¬8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Аї
G__inference_block5_conv4_layer_call_and_return_conditional_losses_11674p√ƒ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ У
,__inference_block5_conv4_layer_call_fn_11683c√ƒ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Аи
E__inference_block5_pool_layer_call_and_return_conditional_losses_7537ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ј
*__inference_block5_pool_layer_call_fn_7543СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€є
G__inference_block6_conv1_layer_call_and_return_conditional_losses_11141n:;8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ С
,__inference_block6_conv1_layer_call_fn_11150a:;8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Ає
G__inference_block6_conv2_layer_call_and_return_conditional_losses_11188nDE8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ С
,__inference_block6_conv2_layer_call_fn_11197aDE8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€АЉ
J__inference_block6_dropout1_layer_call_and_return_conditional_losses_11155n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Љ
J__inference_block6_dropout1_layer_call_and_return_conditional_losses_11167n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Ф
/__inference_block6_dropout1_layer_call_fn_11172a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "!К€€€€€€€€€АФ
/__inference_block6_dropout1_layer_call_fn_11177a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "!К€€€€€€€€€АЉ
J__inference_block6_dropout2_layer_call_and_return_conditional_losses_11202n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Љ
J__inference_block6_dropout2_layer_call_and_return_conditional_losses_11214n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Ф
/__inference_block6_dropout2_layer_call_fn_11219a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "!К€€€€€€€€€АФ
/__inference_block6_dropout2_layer_call_fn_11224a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "!К€€€€€€€€€Ај
N__inference_block7_conv1_column_layer_call_and_return_conditional_losses_11235nNO8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Ш
3__inference_block7_conv1_column_layer_call_fn_11244aNO8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€А¬
P__inference_block7_dropout_column_layer_call_and_return_conditional_losses_11249n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ ¬
P__inference_block7_dropout_column_layer_call_and_return_conditional_losses_11261n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Ъ
5__inference_block7_dropout_column_layer_call_fn_11266a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "!К€€€€€€€€€АЪ
5__inference_block7_dropout_column_layer_call_fn_11271a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "!К€€€€€€€€€Ај
N__inference_block8_conv1_column_layer_call_and_return_conditional_losses_11302n^_8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Ш
3__inference_block8_conv1_column_layer_call_fn_11311a^_8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Ая
G__inference_column_output_layer_call_and_return_conditional_losses_8783УЪЫJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А

™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ј
,__inference_column_output_layer_call_fn_8793ЖЪЫJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А

™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€э
H__inference_concatenate_1_layer_call_and_return_conditional_losses_11344∞~Ґ{
tҐq
oЪl
=К:
inputs/0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
+К(
inputs/1€€€€€€€€€  А
™ ".Ґ+
$К!
0€€€€€€€€€  А

Ъ ’
-__inference_concatenate_1_layer_call_fn_11350£~Ґ{
tҐq
oЪl
=К:
inputs/0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
+К(
inputs/1€€€€€€€€€  А
™ "!К€€€€€€€€€  А
э
H__inference_concatenate_2_layer_call_and_return_conditional_losses_11331∞~Ґ{
tҐq
oЪl
=К:
inputs/0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
+К(
inputs/1€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ ’
-__inference_concatenate_2_layer_call_fn_11337£~Ґ{
tҐq
oЪl
=К:
inputs/0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
+К(
inputs/1€€€€€€€€€А
™ "!К€€€€€€€€€Аэ
H__inference_concatenate_3_layer_call_and_return_conditional_losses_11357∞~Ґ{
tҐq
oЪl
=К:
inputs/0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
+К(
inputs/1€€€€€€€€€  А
™ ".Ґ+
$К!
0€€€€€€€€€  А

Ъ ’
-__inference_concatenate_3_layer_call_fn_11363£~Ґ{
tҐq
oЪl
=К:
inputs/0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
+К(
inputs/1€€€€€€€€€  А
™ "!К€€€€€€€€€  А
ы
F__inference_concatenate_layer_call_and_return_conditional_losses_11318∞~Ґ{
tҐq
oЪl
=К:
inputs/0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
+К(
inputs/1€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ ”
+__inference_concatenate_layer_call_fn_11324£~Ґ{
tҐq
oЪl
=К:
inputs/0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
+К(
inputs/1€€€€€€€€€А
™ "!К€€€€€€€€€АЄ
F__inference_conv7_table_layer_call_and_return_conditional_losses_11282nXY8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Р
+__inference_conv7_table_layer_call_fn_11291aXY8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Аћ
#__inference_signature_wrapper_10043§R•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒ:;DENO^_XYЪЫФХAҐ>
Ґ 
7™4
2
input)К&
input€€€€€€€€€АА"К™Ж
B
column_output1К.
column_output€€€€€€€€€АА
@
table_output0К-
table_output€€€€€€€€€ААё
F__inference_table_output_layer_call_and_return_conditional_losses_8739УФХJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А

™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ґ
+__inference_table_output_layer_call_fn_8749ЖФХJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А

™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ј
C__inference_tablenet_layer_call_and_return_conditional_losses_10281шR•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒ:;DENO^_XYЪЫФХAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "_Ґ\
UЪR
'К$
0/0€€€€€€€€€АА
'К$
0/1€€€€€€€€€АА
Ъ ј
C__inference_tablenet_layer_call_and_return_conditional_losses_10540шR•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒ:;DENO^_XYЪЫФХAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "_Ґ\
UЪR
'К$
0/0€€€€€€€€€АА
'К$
0/1€€€€€€€€€АА
Ъ ё
B__inference_tablenet_layer_call_and_return_conditional_losses_9814ЧR•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒ:;DENO^_XYЪЫФХ@Ґ=
6Ґ3
)К&
input€€€€€€€€€АА
p 

 
™ "Ґ|
uЪr
7К4
0/0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
7К4
0/1+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ё
B__inference_tablenet_layer_call_and_return_conditional_losses_9936ЧR•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒ:;DENO^_XYЪЫФХ@Ґ=
6Ґ3
)К&
input€€€€€€€€€АА
p

 
™ "Ґ|
uЪr
7К4
0/0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
7К4
0/1+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ј
(__inference_tablenet_layer_call_fn_10639КR•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒ:;DENO^_XYЪЫФХAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "qЪn
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
5К2
1+€€€€€€€€€€€€€€€€€€€€€€€€€€€Ј
(__inference_tablenet_layer_call_fn_10738КR•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒ:;DENO^_XYЪЫФХAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "qЪn
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
5К2
1+€€€€€€€€€€€€€€€€€€€€€€€€€€€µ
'__inference_tablenet_layer_call_fn_9126ЙR•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒ:;DENO^_XYЪЫФХ@Ґ=
6Ґ3
)К&
input€€€€€€€€€АА
p 

 
™ "qЪn
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
5К2
1+€€€€€€€€€€€€€€€€€€€€€€€€€€€µ
'__inference_tablenet_layer_call_fn_9692ЙR•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄєЇїЉљЊњјЅ¬√ƒ:;DENO^_XYЪЫФХ@Ґ=
6Ґ3
)К&
input€€€€€€€€€АА
p

 
™ "qЪn
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
5К2
1+€€€€€€€€€€€€€€€€€€€€€€€€€€€м
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_8604ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_up_sampling2d_1_layer_call_fn_8610СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€м
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_8642ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_up_sampling2d_2_layer_call_fn_8648СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€м
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_8680ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_up_sampling2d_3_layer_call_fn_8686СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€м
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_8585ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_up_sampling2d_4_layer_call_fn_8591СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€м
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_8623ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_up_sampling2d_5_layer_call_fn_8629СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€м
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_8661ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_up_sampling2d_6_layer_call_fn_8667СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€м
I__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_8699ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_up_sampling2d_7_layer_call_fn_8705СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€к
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_8566ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ¬
,__inference_up_sampling2d_layer_call_fn_8572СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€