1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((2, 6)).
%AAA
state_at((2, 7), 12).
%BBB
%CCC
time(12..250).
%DDD
%ANSWER SETS

%state_at((2,7),12)
%state_at((3,7),13)
%action(right,12)
%action(up,13)
%state_at((3,6),14)
%action(up,14)
%state_at((3,5),15)
%action(up,15)
%state_at((3,4),16)
%action(up,16)
%state_at((3,3),17)
%action(up,17)
%state_at((3,2),18)
%action(up,18)
%state_at((3,1),19)
%action(right,19)
%state_at((4,1),20)
%action(right,20)
%state_at((5,1),21)
%action(right,21)
%state_at((6,1),22)
%action(right,22)
%state_at((7,1),23)
%action(right,23)
%state_at((8,1),24)
%action(right,24)
%state_at((9,1),25)
%action(right,25)
%state_at((10,1),26)
%action(right,26)
%state_at((11,1),27)
%action(right,27)
%state_at((12,1),28)
%action(right,28)
%state_at((13,1),29)
%action(right,29)
%state_at((14,1),30)
%action(right,30)
%state_at((15,1),31)
%action(right,31)
%state_at((16,1),32)
