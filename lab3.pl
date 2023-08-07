go(A,B):-
    %write('Enter the first number: '),
    %read(A),
    %write('Enter the second number: '),
    %read(B),
    S is A+B,
    write('The sum is: '),
    write(S).

%Fuzzy logic
cold(HowCold,Temp):-
    Temp>=25,
    HowCold='Not cold at all';
    Temp<25,
    Temp>=20,
    HowCold='A bit cold';
    Temp<20,
    Temp>=15,
    HowCold='Cold';
    Temp<15,
    Temp>=10,
    HowCold='Very Cold';
    Temp<10,
    Temp>=3,
    HowCold='Frizing'.

new(N):-
    N=:=0 -> write('zero');
    N>3, write('complete').

input():-
    write('Input a number: '),
    read(A),
    R is mod(A,2), R=:=0 -> write('even'); write('odd').

result():-
    write('Enter a number: '),
    read(N),
    write('Fibonacci series: '),
    X is 0, Y is 1,
    write(X), write(', '),
    write(Y), write(', '),
    fibonacci(N,X,Y).
fibonacci(N,X,Y):-
    N=:=2 -> write('done');
    Z is X+Y,
    write(Z), write(', '),
    A1 is Y,
    A2 is Z,
    N1 is N-1,
    fibonacci(N1,A1,A2).

factorial(0,1).
factorial(N,Result):-
    N>0 -> N1 is N-1, factorial(N1,R1), Result is N*R1.

Lab Report 3 : Arithmatic problem in prolog.
