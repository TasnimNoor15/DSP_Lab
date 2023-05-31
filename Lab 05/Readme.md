## Experiment No : 05

## Submission Date : May 22 , 2022

## Experiment Name :

## Implementation of convolution using built in function and without built in function in MATLAB.

###Theory:
<p>The Z-transform (ZT) is a mathematical tool which is used to convert the difference equations in time domain into the algebraic equations in z-domain.
The Z-transform is a very useful tool in the analysis of a linear shift invariant (LSI) system.

```
Z[x(n)]=X(z)=∑n=x(n)z^(−n)
```

<p>The inverse Z-transform is defined as the process of finding the time domain signal x(n) from its Z-transform X(z). The inverse Z-transform is denoted as −

```
x(n)=Z(^−1)[X(z)]
```
<p>The ROC of the Z-transform is a ring or disc in the z-plane centred at the origin. The ROC of the Z-transform cannot contain any poles. The ROC of Z-transform of an LTI stable system contains the unit circle. The ROC of 
<br>
<br>
Required Software:   Matlab
<br>
Required Language:  Matlab
<br>
<br>

Neccessary Code:

```Matlab
clc;
clear all;
x=input('array: ');
b=0;
y=sym('z');
n=length(x);
for i=1:n
   b=b+x(i)*y^(1-i); 
    
end
z=[];
p=[0]
zplane(z,p)

grid
```




