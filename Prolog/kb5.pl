loves(marsellus,mia).
loves(vincent,mia).
loves(pumpkin,honey_bunny).
loves(honey_bunny,pumpkin).
jealous(X,Y):-  loves(X,Z),  loves(Y,Z).
