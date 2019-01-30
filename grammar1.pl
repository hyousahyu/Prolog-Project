/* From Programming in Prolong by Clocksin and Mellish */
/*
<sentence> -> <noun_phrase> <verb_phrase>

<noun_phrase> -> <determiner> <noun>

<verb_phrase> -> <verb> <noun_phrase>
<verb_phrase> -> <verb>

<determiner> -> the

<noun> -> apple
<noun> -> man

<verb> -> eats
<verb> -> sings
*/

sentence(X) :- append(Y, Z, X), noun_phrase(Y), verb_phrase(Z).

noun_phrase(X) :- append(Y, Z, X), determiner(Y), noun(Z).

verb_phrase(X) :- verb(X).
verb_phrase(X) :- append(Y, Z, X), verb(Y), noun_phrase(Z).

determiner([the]).

noun([apple]).
noun([man]).

verb([eats]).
verb([sings]).


/* Helper rules */
append([], L, L).
append([H | T], L, [H | R]) :-  append(T, L, R).

/* Quaries */
/* sentence([the, man, eats, the, apple]). */
