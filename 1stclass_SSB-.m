% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a

%%
% The first section returns a value 2 while the second returns 98. This is
% because, the section assigns a as a string variable and thus a gets some
% value more than 1.
% '1' is stored with some value itself equals to 49.
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]
%%
% The statements returns different arrays.
% Both a and x gets value 1 by default that are returned in a particular
% array/matix. ---Not sure about the differences between x2 and a2----.
% In x2b, the first value is terminated by a ; and so the second value is
% returned on the next line.

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

%%
% a=b returns a 'true' value with 1, whereas a==b gives a 'false' value
% with 0.

%%
%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b

%%
% The array lokks for logical values i.e. if both a and b have identical
% values. When they are identical, the answer returned is true or 1; when
% they are different, the answer is false or 0. The answers are returned in
% an array of single row and three columns.

%%
%explain why this gives an error:

b = [2, 3];
a == b

%%
% This is because a has not been assigned with idenetical dimension as in
% b.


%%
%explain why this does not give an error
b = 2;
a == b 

%%
% --


%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%%
% : gives a range of values

%%
%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]

%%
% The array displays 10 more integers after 1 to 10 thus returning 1 to 20.

%%
% 1:10
% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty

%%
% 2:+2:20

%%
% 2. odd numbers from one to nineteen

%%
% 1:+2:19

%%
% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)

%%
% 20:-2:2
% fliplr(2:+2:20)

%%
% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)

%%
% --


%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2


%%
% m1 = ones(2);
m2 = 2*ones(2);
m1*m2

ans =

     4     4
     4     4

% 
%%
%explain this command:
m2./m1

%%
% m1 = ones(2);
m2 = 2*ones(2);
m1.*m2

ans =

     2     2
     2     2
     
% Not sure of the reason behind this answer.
%%
%extra credit: explain why this command gives a warning:
m2/m1

%%
% m1 = ones(2);
m2 = 2*ones(2);
m2/m1

%Warning: Matrix is singular to working precision. 
 

ans =

   NaN   NaN
   NaN   NaN
   
% Not sure of this answer.   

%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)

rand_nums(2:4,3)

rand_nums(1:2,3:4)

rand_nums(:,2)

rand_nums(1,:)

rand_nums(:,[1 3 5])


