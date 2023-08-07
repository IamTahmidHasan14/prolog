%1
fact(0,1).
fact(N,F):-
    N>0, X is N-1,
    fact(X,F1), F is N*F1.

%2
input():-
    read(X), uptoten(X).
uptoten(X):-
    X<11, T is X+1,
    write(X),write(', '),uptoten(T).

%3
animal(cat).
animal(dog).
animal(tiger).

snake(ojogor).

likes(raju,T):- S='snake', animal(T), T\=S.

%4
people(kabila).
people(suvho).
people(habu).
people(pasa).
people(shimul).

nature(p,kabila).
nature(n,suvho).
nature(p,habu).
nature(n,pasa).
nature(p,shimul).

minalikes(mina,T):-
    people(T), nature(X,T), X\='n'.

%5
max:-
    write('Num1: '), read(X),
    write('Num2: '), read(Y),
    maxnum(X,Y,Z),
    write('Max Num: '), write(Z).
maxnum(X,Y,Z):-
    X>Y -> Z is X; Z is Y.

%6
rf(1900,ashok).
rt(1950,ashok).
rf(1951,ram).
rt(1960,ram).
rf(1961,nepolian).
rt(1970,nepolian).
rf(1971,ravi).
rt(1980,ravi).

emperor(N,Y):-
    rf(F,N), F=<Y,
    rt(T,N), T>=Y.
