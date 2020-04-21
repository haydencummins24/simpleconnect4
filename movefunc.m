function [board] = movefunc(board,playernum)
%movefunc This function is used to make a move in Connect-4
%   This is done by overwriting a part of the array(board) after rigorous
%   testing to see if it is invalid.
% Updates: array board
%(updates with the move the player makes)
valid = false;
while valid ~= true
    board = board
    fprintf('Pick a valid area on the board to place your piece\n')
    piecex = input('\nEnter width(left(1) to right(4)): ');
    piecey = input('Enter height(bottom(1) to top(4) ): ');
    if(piecey == 4)
        piecey = 1;
    elseif piecey == 3
        piecey = 2
    elseif piecey == 2
        piecey = 3
    elseif piecey == 1
        piecey = 4
    end
    valid = true;
    if (piecey == 1) || (piecex == 1)
        if board(piecey,piecex) ~= 0
            fprintf('\ninvalid location, please choose a valid location\n');
            valid = false;
        end
    elseif (piecey == 4) || (piecex == 4)
        if (board((piecey-1),piecex) == 1) || (board((piecey-1),piecex) == 2)
            fprintf('\ninvalid location, please choose a valid location\n');
            valid = false;
        end
    elseif (board((piecey-1),piecex) == 1) || (board((piecey-1),piecex) == 2) || (board((piecey+1),piecex) == 0)
        fprintf('\ninvalid location, please choose a valid location\n');
        valid = false;
    else 
        valid = true;
    end
    
end
board(piecey,piecex) = playernum;
end

