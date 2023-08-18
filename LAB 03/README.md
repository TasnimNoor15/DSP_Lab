## Experiment No : 03

## Submission Date : May 15, 2023

## Experiment Name : Experimental study of Auto correlation and Cross correlation of signals using MATLAB.

---

## Theory:

<p style="text-align: justify">
Autocorrelation is a mathematical representation of the degree of similarity between a given time series and a lagged version of itself over successive time intervals. It's conceptually similar to the correlation between two different time series, but autocorrelation uses the same time series twice: once in its original form and once lagged one or more time periods.
</p>
<p style="text-align: justify">
Cross-correlation is a measurement that tracks the movements of two or more sets of time series data relative to one another. It is used to compare multiple time series and objectively determine how well they match up with each other and, in particular, at what point the best match occurs.
Cross-correlation may also reveal any periodicities in the data.

</p>
<br>
<b> Required Software : Matlab</b>
<br>
<b> Required Language : Matlab</b>
<br>
## Code:
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


## Discussion and Conclusion:

<p style="text-align: justify">

Both of the with and without built in function code snippets were executed successfully and same results were obtained for each of the cases.

</p>

## References:

[1] “Autocorrelation,” Wikipedia. [Online]. Available: https://en.wikipedia.org/wiki/Autocorrelation. [Accessed: 11-May-2023].

[2] “What is Correlation in Signals and Systems,” Online Tutorials Library. [Online]. Available: https://www.tutorialspoint.com/what-is-correlation-in-signals-and-systems. [Accessed: 11-May-2023].

[3] “Cross-correlation,” Wikipedia. [Online]. Available: https://en.wikipedia.org/wiki/Cross-correlation. [Accessed: 11-May-2023].

