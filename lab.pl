teacher(fw).
teacher(itr).
teacher(sp).
course(ai).
course(networking).
course(math).

teaches(X,Y):-
    teacher(X),
    course(Y).
