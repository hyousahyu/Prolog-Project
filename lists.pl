/* The append rule */
append([], L, L).
append([H | T], L, [H | R]) :-  append(T, L, R).

/* Quaries for the append rule */
/*
append([1],[2], R).
append([],[],R).
append([1,2], R, [1,2,3,4]).
*/

/* The member rule */
member(E, [E | _]).
member(E, [_ | T]) :- member(E,T). 

/* Quaries for the member rule */
/*
member(1, []).
member(1, [1,2,3]).
member(1, [2, 3, 1, 6]).
member(1, [2,3,4,5]).
member(X, [1,2,3,4,5]). 
member(1, X).
*/
