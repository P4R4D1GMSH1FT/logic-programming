not_equal(X, Y) :-
    X \= Y.
    
parent(X,Y) :-
    father(X,Y),
    mother(X,Y).
son(X,Y) :-
    father(Y,X), male(X).
daughter(X,Y) :-
    father(Y,X), female(X).
uncle(Uncle,Person) :-
    brother(Uncle,Parent), parent(Parent,Person).
sibling(Sib1,Sib2) :-
    parent(Parent,Sib1), parent(Parent,Sib2), Sib1 \= Sib2.
brother(Bro1,Bro2) :-
    son(mother,father), sibling(mother,father).
sister(Sis1,Sis2) :-
    daughter(mother,father),
    sibling(X,Y),
    female(X).
cousin(Cousin1,Cousin2) :-
    parent(Parent1,Cousin1),
    parent(Parent2,Cousin2),
    sibling(Parent1,Parent2).
married_couple(Wife,Husband) :-
    Wife(X,Y),
    Husband(X,Y).
mother_in_law(X,Y) :-
    mother(Husband,Wife),
    mother(Wife,Husband).
father_in_law(X,Y) :-
    father(Husband,Wife),
    father(Wife,Husband).
son_in_law(X,Y)
    son(Husband,Wife),
    son(Wife,Husband).
