% lukasz.sliwa@ii.uj.edu.pl
% Przykladowe wywolanie:
%
% pegs(board(0,1,1,1,1,1,1,1,1,1,1,1,1,1,1), Result).
%

pegs(Board, Solution) :- solve([Board],14,Solution).

solve(Solution,1,Solution).
solve([From|Rest],Count,Solution):- NewCount is Count-1,
     move(From,To), solve([To,From|Rest],NewCount,Solution).

move(board(1,1,C,0,E,F,G,H,I,J,K,L,M,N,P), board(0,0,C,1,E,F,G,H,I,J,K,L,M,N,P)).
move(board(1,B,1,D,E,0,G,H,I,J,K,L,M,N,P), board(0,B,0,D,E,1,G,H,I,J,K,L,M,N,P)).
move(board(A,1,C,1,E,F,0,H,I,J,K,L,M,N,P), board(A,0,C,0,E,F,1,H,I,J,K,L,M,N,P)).
move(board(A,1,C,D,1,F,G,H,0,J,K,L,M,N,P), board(A,0,C,D,0,F,G,H,1,J,K,L,M,N,P)).
move(board(A,B,1,D,1,F,G,0,I,J,K,L,M,N,P), board(A,B,0,D,0,F,G,1,I,J,K,L,M,N,P)).
move(board(A,B,1,D,E,1,G,H,I,0,K,L,M,N,P), board(A,B,0,D,E,0,G,H,I,1,K,L,M,N,P)).
move(board(0,1,C,1,E,F,G,H,I,J,K,L,M,N,P), board(1,0,C,0,E,F,G,H,I,J,K,L,M,N,P)).
move(board(A,B,C,1,1,0,G,H,I,J,K,L,M,N,P), board(A,B,C,0,0,1,G,H,I,J,K,L,M,N,P)).
move(board(A,B,C,1,E,F,G,1,I,J,K,L,0,N,P), board(A,B,C,0,E,F,G,0,I,J,K,L,1,N,P)).
move(board(A,B,C,1,E,F,1,H,I,J,0,L,M,N,P), board(A,B,C,0,E,F,0,H,I,J,1,L,M,N,P)).
move(board(A,B,C,D,1,F,G,1,I,J,K,0,M,N,P), board(A,B,C,D,0,F,G,0,I,J,K,1,M,N,P)).
move(board(A,B,C,D,1,F,G,H,1,J,K,L,M,0,P), board(A,B,C,D,0,F,G,H,0,J,K,L,M,1,P)).
move(board(0,B,1,D,E,1,G,H,I,J,K,L,M,N,P), board(1,B,0,D,E,0,G,H,I,J,K,L,M,N,P)).
move(board(A,B,C,0,1,1,G,H,I,J,K,L,M,N,P), board(A,B,C,1,0,0,G,H,I,J,K,L,M,N,P)).
move(board(A,B,C,D,E,1,G,H,1,J,K,L,0,N,P), board(A,B,C,D,E,0,G,H,0,J,K,L,1,N,P)).
move(board(A,B,C,D,E,1,G,H,I,1,K,L,M,N,0), board(A,B,C,D,E,0,G,H,I,0,K,L,M,N,1)).
move(board(A,0,C,1,E,F,1,H,I,J,K,L,M,N,P), board(A,1,C,0,E,F,0,H,I,J,K,L,M,N,P)).
move(board(A,B,C,D,E,F,1,1,0,J,K,L,M,N,P), board(A,B,C,D,E,F,0,0,1,J,K,L,M,N,P)).
move(board(A,B,0,D,1,F,G,1,I,J,K,L,M,N,P), board(A,B,1,D,0,F,G,0,I,J,K,L,M,N,P)).
move(board(A,B,C,D,E,F,G,1,1,0,K,L,M,N,P), board(A,B,C,D,E,F,G,0,0,1,K,L,M,N,P)).
move(board(A,0,C,D,1,F,G,H,1,J,K,L,M,N,P), board(A,1,C,D,0,F,G,H,0,J,K,L,M,N,P)).
move(board(A,B,C,D,E,F,0,1,1,J,K,L,M,N,P), board(A,B,C,D,E,F,1,0,0,J,K,L,M,N,P)).
move(board(A,B,0,D,E,1,G,H,I,1,K,L,M,N,P), board(A,B,1,D,E,0,G,H,I,0,K,L,M,N,P)).
move(board(A,B,C,D,E,F,G,0,1,1,K,L,M,N,P), board(A,B,C,D,E,F,G,1,0,0,K,L,M,N,P)).
move(board(A,B,C,0,E,F,1,H,I,J,1,L,M,N,P), board(A,B,C,1,E,F,0,H,I,J,0,L,M,N,P)).
move(board(A,B,C,D,E,F,G,H,I,J,1,1,0,N,P), board(A,B,C,D,E,F,G,H,I,J,0,0,1,N,P)).
move(board(A,B,C,D,0,F,G,1,I,J,K,1,M,N,P), board(A,B,C,D,1,F,G,0,I,J,K,0,M,N,P)).
move(board(A,B,C,D,E,F,G,H,I,J,K,1,1,0,P), board(A,B,C,D,E,F,G,H,I,J,K,0,0,1,P)).
move(board(A,B,C,D,E,F,G,H,I,J,0,1,1,N,P), board(A,B,C,D,E,F,G,H,I,J,1,0,0,N,P)).
move(board(A,B,C,0,E,F,G,1,I,J,K,L,1,N,P), board(A,B,C,1,E,F,G,0,I,J,K,L,0,N,P)).
move(board(A,B,C,D,E,0,G,H,1,J,K,L,1,N,P), board(A,B,C,D,E,1,G,H,0,J,K,L,0,N,P)).
move(board(A,B,C,D,E,F,G,H,I,J,K,L,1,1,0), board(A,B,C,D,E,F,G,H,I,J,K,L,0,0,1)).
move(board(A,B,C,D,E,F,G,H,I,J,K,0,1,1,P), board(A,B,C,D,E,F,G,H,I,J,K,1,0,0,P)).
move(board(A,B,C,D,0,F,G,H,1,J,K,L,M,1,P), board(A,B,C,D,1,F,G,H,0,J,K,L,M,0,P)).
move(board(A,B,C,D,E,F,G,H,I,J,K,L,0,1,1), board(A,B,C,D,E,F,G,H,I,J,K,L,1,0,0)).
move(board(A,B,C,D,E,0,G,H,I,1,K,L,M,N,1), board(A,B,C,D,E,1,G,H,I,0,K,L,M,N,0)).

