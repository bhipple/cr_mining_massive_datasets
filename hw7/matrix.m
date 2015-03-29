1;

% Transition Matrix with no dead ends and no spider traps
Figure5_1 = [0 1/2 1 0; 1/3 0 0 1/2; 1/3 0 0 1/2; 1/3 1/2 0 0 ];

% Has a dead end at node C
Figure5_5 = [0 1/2 0 0; 1/3 0 0 1/2; 1/3 0 0 1/2; 1/3 1/2 0 0 ];

% Has a spider trap at node C
Figure5_6 = [0 1/2 0 0; 1/3 0 0 1/2; 1/3 0 1 1/2; 1/3 1/2 0 0 ];

% Hubs and Authorities representation of the Link Matrix
% L(i,j) = 1 if there is a link from page i to page j, and 0 otherwise
Figure5_18 = [0 1 1 1 0; 1 0 0 1 0; 0 0 0 0 1; 0 1 1 0 0; 0 0 0 0 0];

% Matrices from homework problems
hw7a_3 = [0 1 1 0; 1 0 0 0; 0 0 0 1; 0 0 1 0];
hw7b_1 = [0 1 0 0; 1/2 0 0 0; 1/2 0 0 1; 0 0 1 0];

