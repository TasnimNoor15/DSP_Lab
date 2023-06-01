## Experiment No : 05

## Submission Date : May 22 , 2022

## Experiment Name :

## Experimental study about Z transform,Inverse Z transform and their ROC on Matalab.

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
% Causal System

clc;
clear all;
x=input('array: ');b=0;
y=sym('z');
n=length(x);
for i=1:n
   b=b+x(i)*y^(1-i); 
    
end
b
z=[];
p=[0]
zplane(z,p)

grid
```

```matlab
% Anti-Causal System

clc;
clear all;
x=input('array: ');b=0;
y=sym('z');
n=length(x);
for i=1:n
   b=b+x(i)*y^(-(i-n)); 
    
end
b
z=[];
p=[]
zplane(z,p)

grid
```

```matlab
% Non-Causal System

clc;
clear all;
x=input('array: ');
b=0;
y=sym('z');
n=length(x);
m=input('index:')
for i=1:n
   b=b+x(i)*y^(m-i); 
    
end
b
z=[];
p=[0]
zplane(z,p)

grid
```

```matlab
% inverse Z-transform

clc;
clear all;
y=sym('z');syms n;
%f=exp(-2*n);
f=2^-n;
F=ztrans(f)
t=iztrans(F);
t=simplify(t);
disp(t);z=[0];
%p=poles(F);
%zplane(z,p);
%grid
b = [1];
a = [1 -1/2];

[b,a] = eqtflength(b,a);
[z,p,k] = tf2zp(b,a)
zplane(b,a)
text(real(z)+0.1,imag(z),"Zero")
text(real(p)+0.1,imag(p),"Pole")
```


## Discussion:

<p style="text-align: justify">

The experiment was about to find the Z-transform and Inverse Z-transform and to plot the ROC for each of thee case.
Here Z-transform was calculated in three different scenarios i.e for causal,Non-causal and anti causal system but everytime it was done with mathmatical logics.Every time an input array eas taken and the initial index was specified so that it could easier to find the power of Z in the Z-transform.
And in case of inverse Z-transform implimentation was done by a buld-in function named <b>iztrans</b>.
Also in every case ROC was calculated and plotted by some build-in function of Matlab.

</p>

## Conclusion:

<p style="text-align: justify">

All the desired outputs were obtained successfully.

</p>

## References:

[1] “Z-Transform,” Tutorialspont. [Online]. Available:https://www.tutorialspoint.com/what-is-z-transform. [Accessed: 30-May-2023].

[2] “Inverse Z-Transform,” Tutorialspoint. [Online]. Available: https://www.tutorialspoint.com/what-is-inverse-z-transform. [Accessed: 30-May-2023].

[2] “ROC,” Wikipedia. [Online]. Available:https://en.wikipedia.org/wiki/Z-transform#:~:text=the%20unit%20circle.-,Region%20of%20convergencethe%20Z%2Dtransform%20summation%20converges. [Accessed: 30-May-2023].
