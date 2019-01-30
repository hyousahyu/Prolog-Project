/* Facts */
female(shelley).
female(mary).

male(bill).
male(jake).

father(bill, jake).
father(bill, shelley).
father(roger, bill).

mother(mary, jake).
mother(mary, shelley).
mother(kim, mary).

/* Rules */
parent(X, Y) :- mother(X, Y).
parent(X, Y) :- father(X, Y).
grandparent(X, Z) :- parent(X,Y), parent(Y,Z).

/* Quaries in the quary mode */
/* male(jake). */
/* male(X). Type ; to get the next answer */ 
/* mother(mary, X). Type ; to get the next answer*/
