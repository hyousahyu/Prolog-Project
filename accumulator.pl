
list_sum([X],X).
list_sum([X | T], A) :- list_sum(T,A1), A is A1 + X.

list_product([X],X).
list_product([X | T], A) :- list_product(T,A1), A is A1 * X.

list_length([],0).
list_length([X | T], A) :- list_length(T, A1), A is A1 + 1.
