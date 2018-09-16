killer(butch).
married(mia, marsellus).
dead(zed).
kills(marsellus,X):- massage(X,mia).
loves(mia, X):- goodDancer(X).
eat(jules, X):- nutritious(X); tasty(X).

%4 test
massage(john,mia).
kills(marsellus, john).

%5 test
goodDancer(johnTravolta).
loves(mia,johnTravolta).

%6 test
tasty(schadesPizza).
eat(jules,schadesPizza).