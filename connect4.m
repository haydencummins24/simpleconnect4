clc
clear
fprintf('\n');
%start menu because I'm a sucker for old games
fprintf('\n**************************************************\n')
fprintf('*                                                *\n')
fprintf('*           Welcome to 4x4 Connect-4             *\n')
fprintf('*                                                *\n')
fprintf('*    Made and Developed by Hayden Cummins Ltd    *\n')
fprintf('*             All Rights Reserved                *\n')
fprintf('*                                                *\n')
fprintf('**************************************************\n')

gameboard = zeros(4,4)

ready = 0;
while ready ~= 1
    fprintf('Ready to play? (enter 1)\n');
    ready = input('Enter: ');
end

%boolean to test if there is a winner
winner = false;
%variable to hold winning players #
winplayer = 0;
%while no winner
while winner == false
    %%player 1 turn
    fprintf('Player 1, make your move! \n')
    gameboard = movefunc(gameboard,1)
    winner = checkWin(gameboard,1);
    if(winner == true)
        winplayer = 1;
        break;
    end
    %%player 2 turn
    fprintf('Player 2, make your move!')
    gameboard = movefunc(gameboard,2)
    winner = checkWin(gameboard,2);
    if(winner == true)
        winplayer = 2;
        break;
    end
end

fprintf('GAME OVER! Player %2.0f is the Winner!!', winplayer)