# MECH 105: Homework 2
Created on: 21 August 2017
By: Samuel Bechara, PhD

## Instructions
You need to use MATLAB for the following problems. When you submit your assignment for grading, please include your MATLAB code. I reccomend using either latex or markdown to create a single PDF file that is easy for us to grade. We will not grade homework that is difficult to decipher.

## Problem 1
Consider a simple electric circuit consisting of a resistor, a capacitor, and an inductor as shown below.

![Circuit Image](2.png)

The charge on the capacitor $q(t)$ as a function of time can be computed as
$${q(t)}={q_0e^{-Rt/(2L)}cos{[\sqrt{{{1}\over{LC}}-{({{R}\over{2L}})}^2}t]}}$$
where $t$=time, $q_0$ the initial charge, $R$=the resistance, $L$=inductance, and $C$=capacitance. 

1. Use MATLAB to generate a plot of this function from $t=0$ to $0.8$ given that $q_0=10$, $R=60$, $L=9$, and $C=0.00005$. Be sure to label your axis appropriately for full credit.
2. Using the subplot function, create another plot showing what happens when the capacitor is 10x greater ($C=0.0005$). When you turn in your homework, you only need to show the subplot.
3. Explain why the response changed when the capacitance went up.

## Problem 2
Here are some data for concentration $(c)$ versus time $(t)$ for the photodegradation of aqueous bromine:

| t, min | c, ppm |
|:------:|:------:|
| 10 | 3.4 |
| 20 | 2.6 |
| 30 | 1.6 |
| 40 | 1.3 |
| 50 | 1.0 |
| 60 | 0.5 |

These data can be described by the following function:
$$c=4.84e^{-0.034t}$$
Use MATLAB to create a plot displaying both the data (using red diamond shaped) and the function (using a green, dashed line). Plot the function for $t$=0 to 70min. Be sure to include a legend and label axis appropriately.
