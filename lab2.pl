male(jhon).
male(prince).
male(alex).
male(bob).
male(ally).
male(pat).
male(jim).
male(tom).
female(mary).
female(ana).
female(pam).
female(liz).

parent(jhon,mary).
parent(jhon,prince).
parent(mary,alex).
parent(mary,ana).
parent(prince,pat).
parent(prince,ally).
parent(alex,bob).
parent(ana,jim).
parent(pat,jim).
parent(ally,liz).
parent(jim,pam).
parent(jim,tom).

father(X,Y):- male(X), parent(X,Y).
mother(X,Y):- female(X), parent(X,Y).

grandfather(X,Y):- male(X), parent(X,Z), parent(Z,Y).
grandmother(X,Y):- female(X), parent(X,Z), parent(Z,Y).

brother(X,Y):- male(X), parent(Z,X), parent(Z,Y), X\=Y.
sister(X,Y):- female(X), parent(Z,X), parent(Z,Y), X\=Y.

uncle(X,Y):- parent(Z,Y), brother(X,Z).
aunty(X,Y):- parent(Z,Y), sister(X,Z).

predecessor(X,Y):- parent(X,Y).
predecessor(X,Y):- parent(X,Z), predecessor(Z,Y).
