% ============================================================
%  ARTI 303 - Lab 4  |  Variables in Prolog
%  Name: Wesam Kamal Sanbo
%  ID: 2230001052
% ============================================================

% --- Facts ---
male(ali).
male(ahmad).
male(muhammad).
male(faisal).
male(hassan).
male(khan).

female(sara).
female(nora).

parent(ali, ahmad).
parent(ali, muhammad).
parent(ahmad, sara).
parent(ahmad, nora).
parent(ahmad, khan).
parent(muhammad, faisal).
parent(faisal, hassan).

% --- Rule: brother/2 ---
brother(B, S) :-
    male(B),
    parent(P, B),
    parent(P, S),
    B \= S.