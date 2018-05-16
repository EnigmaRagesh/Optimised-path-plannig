%Run this to excecute the program
clc
clear all
close all

A = [1, 9];
rng(202);
%P= 10*rand(7,2);
P = [1, 7
     3, 6
     5, 8
     4, 5
     5, 3
     8, 5
     8, 2];
B = [9, 1];
C = [2, 8;
     3, 6
     8, 6
     8, 2];
r = [ 0.8;
      0.7
      1
      0.5];
lb = [0 0; 0 0; 0 0; 4 4; 6 4; 6 0; 6 0];
ub = [4 10; 4 10; 4 10; 4 6; 6 6; 10 10; 10 10];

X = fmincon(@(P)objective(A,P,B), P, [],[],[],[], lb, ub,@(P)constarint(A, P, B, C, r))

draw(A, P, B ,X, C, r) 

 
