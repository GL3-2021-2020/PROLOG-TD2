% EX 1
pgcd(X,X,X).
pgcd(X,Y,D) :- X < Y , Y1 is Y - X , pgcd(X,Y1, D) ,!.
pgcd(X,Y,D) :- pgcd(Y,X, D).

% EX 2
fib(0 ,1) :- !.
fib(1, 1):- !.
fib(N, R) :- N1 is N - 1 , N2 is N-2  ,fib(N1 , R1) , fib(N2 , R2) ,   R is R1 + R2 .

% EX 3
fact(0 , 1):- !.
fact(1 , 1):- !.
fact(X , R) :- Y is X -1 , fact(Y , R1) , R is R1 * X.

% EX 4
somme(0,S):- write(S), nl ,!.
somme(N , S) :- read(X) , M is N -1 , S1 is S + X  , somme(M , S1).

% EX 5
element_pair([] , []) :- !.
element_pair([X | Xs] , LR) :- 0 is X mod 2  ,element_pair(Xs , L) , append([X] , L , LR).
element_pair([X | Xs] , LR) :- 1 is X mod 2 ,element_pair(Xs , LR ).

% EX 6
sommeArr([X] , X ).
sommeArr([X  | XS ] , N) :- sommeArr(XS , M),  N is M + X.

lengthArr([] , 0).
lengthArr([_ | XS] , N) :- lengthArr(XS , M) , N is M + 1.

maximum([X] , X ).
maximum([X | XS] , N) :- maximum(XS , M) , N is max(X, M).


% EX 7
inter([] , _  , []).
inter([X | L1] , L2 , [X | L]) :- member(X , L2), !, inter(L1 , L2, L).
inter([_  | L1]  , L2 , L) :- inter(L1 , L2, L ).

inter2([] , _  , []).
inter2([X | L1] , L2 , [X | L]) :- member(X , L2), inter(L1 , L2, L).
inter2([X  | L1]  , L2 , L) :- not(member(X , L2)) ,  inter(L1 , L2, L ).


