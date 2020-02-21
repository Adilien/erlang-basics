-module(class3).
-compile(export_all).

%multiplyNumber function
multiplyNumber(X,Y) -> X*Y. 

%maxNumber function
maxNumber(W,X,Y,Z) -> max(W, max(max(X,Y),Z)).

%sum of the list using tail recursion
sum([]) -> 0;
sum([X|Xs]) -> X + sum(Xs).

%multiply the list using tail recursion
multiply([]) -> 1;
multiply([X|Xs]) -> X * multiply(Xs).

%find the maximum number of the list
maximum([]) -> 0;
maximum([X|Xs]) -> max(X, maximum(Xs)).

%given a number N in the first argument, the function checks to 
%if N is inside the list
insideList(Z,[]) -> false;
insideList(Z, [X|Xs]) -> 
	case (X == Z) of 
	true -> true;
	false -> insideList(Z, Xs)
	end.

%given a number N in the first argument selects only numbers greater than N
%in the list
greaterNum(N, []) -> [];
greaterNum(N, [X | Xs]) when X > N -> [X] ++ greaterNum(N, Xs);
greaterNum(N, [X | Xs]) -> greaterNum(N, Xs). 

%reverse a list
reverse([]) -> [];
reverse([X | Xs]) -> reverse(Xs) ++ [X].

%given a number N in the first argument selects only numbers lower than N
%in the list
lowerThan(N, []) -> [];
lowerThan(N, [X | Xs]) when X < N -> [X] ++ lowerThan(N, Xs);
lowerThan(N, [X | Xs]) -> lowerThan(N, Xs).

%given a number N in the first argument, the function finds the value
%located in that index position
%2, [2, 3, 5]
%1, [3, 5]
%0, [5]
findIndexValue(N, []) -> [];
findIndexValue(0, [X | Xs]) -> X;
findIndexValue(N, [X | Xs]) -> findIndexValue(N-1, Xs). 
 
%finds the total of the list
total([]) -> 0; 
total([X|Xs]) -> X + total(Xs).

%doubles each element of the list
double([]) -> [];
double([X|Xs]) -> [X*2 | double(Xs)].

%counts the number of elements in the list which do not match the input N
notInList(N, []) -> 0;
notInList(N, [X|Xs]) when X =/= N -> 1 + notInList(N, Xs);
notInList(N, [X|Xs]) -> notInList(N, Xs).

%returns the first value of a list
first([]) -> [];
first([X|Xs]) -> X.

%returns the last value of a list
last([]) -> [];
last([X|[]]) -> X;
last([X|Xs]) -> last(Xs). 
