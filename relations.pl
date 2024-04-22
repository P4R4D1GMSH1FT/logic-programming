% from The Art of Prolog

father(abraham,isaac) male(isaac).
father(haran,lot). male(lot).
father(haran,milcah). female (milcah).
father(haran,yiscah) female(yiscah).
son(X,Y) :- father(Y,X), male(X).
daughter(X,Y) :- father(Y,X), female(X).
