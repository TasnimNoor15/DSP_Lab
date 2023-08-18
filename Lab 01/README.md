## Experiment No : 01

## Submission Date : March 19, 2023

## Experiment Name : Study of Linear convolution and implimentation by MATLAB code.

<br>

## Theory:

<p style="text-align: justify">



Considering two finite duration sequences x (n) and h (n), the duration of x(n) is n1 samples in the interval 0 ≤ n ≤ (n1 − 1) . The duration of h (n) is n2 samples; that is h (n) is non –zero only in the interval 0 ≤ n ≤ (n2 − 1) . The linear or a periodic convolution of x (n) and h (n) yields the sequence y (n) defined as,
<br>

Clearly, y (n) is a finite duration sequence of duration (n1+n2 -1) samples. The convolution sum of two sequences can be found by using following steps:
<br>
Step1: Choosing an initial value of n, the starting time for evaluating the output sequence y (n). If x(n) starts at n=n1 and h (n) starts at n= n2 then n = n1+ n2-1 is a good choice.
<br>
Step2: Expressing both sequences in terms of the index m.
<br>
Step3: Folding h (m) about m=0 to obtain h (-m) and shift by n to the right if n is positive and left if n is negative to obtain h (n-m).
<br>
Step4: Multiply two sequences x (n-m) and h (m) element by element and sum the products to get y (n).
<br>
Step5: Increment the index n, shift the sequence x (n-m) to right by one sample and repeat step4. Step6: Repeat step5 until the sum of products is zero for all remaining values of n.


</p>
<br>
<b> Required Software : Matlab</b>
<br>
<b> Required Language : Matlab</b>
<br>

## Code:
<br>
<b> Cross correlation</b>
  <br>
  
```matlab

clc; clear all;
x=input('Enter the input signal'); h=fliplr(x);
z=[];
for i=1:length(x) g=h.*x(i);
z=[z;g];
end
[r c]=size(z); k=r+c;
t=2; y=[];
cd=0; while(t<=k)
for i=1:r
for j=1:c
if(i+j==t) cd=cd+z(i,j); end
end
end t=t+1;
y=[y cd];
 
cd=0; end disp(y);
subplot(2,1,1) stem(xcorr(x)); title('Auto correlation') subplot(2,1,2);
stem(y); title('Output-y')

```

## Output:

![Output](src/auto.png)
<br>
**Fig 3.1** : Figure of Auto Correlation 

<br>
<b> Cross correlation</b>
  <br>
  
```matlab
clc;
clear all;
x=input('Enter the first input signal'); x1=input('Enter the second input signal'); h=fliplr(x1);
z=[];
for i=1:length(x) g=h.*x(i);
z=[z;g];
end
[r c]=size(z); k=r+c;
t=2; y=[];
cd=0;
 
while(t<=k) for i=1:r
for j=1:c
if(i+j==t) cd=cd+z(i,j);
end end
end t=t+1; y=[y cd]; cd=0; end disp(y);
subplot(2,1,1) stem(xcorr(x,h)); title('Cross correlation') subplot(2,1,2);
stem(y); title('Output-y')

```

## Output:

![Output](src/cross.png)
<br>
**Fig 3.1** : Figure of Cross correlation
<br>


## Discussion:

<p style="text-align: justify">

The task was about implimenting convolution of two descrete signals. First it was done using the build in function of convolution conv(), and then it was implimented without any build in function i.e applying some mathmatical logics.
Some problems were noticed while working with the arrays. As in matlab all the array index starts with index 1 not zero or negative so all the index whose index started with 0 was incremented by one . And also the size of array was not matched with the iteration number that’s why a function zeros() has been used for padding which made the size of all arrays equal size i.e of the number of total iteration.


## Conclusion:

<p style="text-align: justify">

All the desired outputs were attained from the above programs.

</p>

## References:
[1]" Linear Convolution", studentcorner, 2023. [Online]. Available: https://jru.edu.in/studentcorner/lab-manual/btech/EE/5th- sem/LAB%20MANUAL%20DIGITAL%20SIGNAL%20PROCESSING-btech5thsem.pdf
Accessed:17-April- 2023].



