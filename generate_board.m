function [BoardFINAL] = generate_board(row,col,BOMBS)
% Purpose: generate board with numbers and bombs
% Inputs:
%   row = number of rows for board size
%   col = number of cols for board size
%   BOMBS = number of bombs
% Output:
%   BoardFINAL = 2D string with 0-8 and X for bombs
% step 1: Place the bombs in random locations
Board = zeros(row,col);
BombLOC = [];
for i = 1:1:BOMBS
    ranLOC = randi([1, row*col]);
    %protects against a preexisting bomb
    while Board(ranLOC) == -1
        ranLOC = randi([1, row*col]);
    end
    Board(ranLOC) = -1; %-1 to indicate a bomb
    BoardFINAL = Board;
    BombLOC = [BombLOC;ranLOC];
end



% Step 2: Add numbers to each non-bomb location based on the number of
% bombs its touching

for r = 1:1:row
    for c = 1:1:col
        if Board(r,c) == 0 % Not a bomb
            if r == 1
                if c == 1 % top left
                    %3 values
                    Around = [Board(r,c+1), Board(r+1,c), Board(r+1,c+1)];
                elseif c == col % top right
                    %3 values
                    Around = [Board(r,c-1), Board(r+1,c-1),Board(r+1,c)];

                else % top
                    %5 values
                    Around = [Board(r,c+1), Board(r+1,c-1),...
                        Board(r+1,c), Board(r+1, c+1), Board(r,c+1)];
                end
            elseif r == row
                if c == 1 %bottom left
                    %3 values
                    Around = [Board(r-1,c), Board(r-1,c+1), Board(r,c+1)];
                elseif c == col %bottom right
                    %3 values
                    Around = [Board(r,c-1), Board(r-1,c-1), Board(r-1,c)];
                else %bottom
                    %5 values
                    Around = [Board(r,c-1), Board(r-1,c-1),Board(r-1,c),...
                        Board(r-1,c+1), Board(r,c+1)];
                end
            elseif c == 1 % Left
                %5 values
                Around = [Board(r-1,c), Board(r-1,c+1), Board(r,c+1),...
                    Board(r+1,c+1), Board(r+1,c)];
            elseif c == col % right
                %5 values
                Around = [Board(r,c-1), Board(r-1,c-1), Board(r-1,c),...
                    Board(r+1,c-1), Board(r+1,c)];
            elseif Board(r,c) == 0 
                Around = [Board(r-1,c-1),Board(r-1,c),Board(r-1,c-1),...
                    Board(r,c-1), Board(r,c+1),Board(r+1,c-1),Board(r+1,c),...
                    Board(r+1,c+1)];
            end

            % Take the absolute value of sum
            BOMBADJ = abs(sum(Around));
            BoardFINAL(r,c) = BOMBADJ;
        end

    end
end
% Step 3: Convert to string and make bombs "X"
% convert BoardFINAL to string
BoardFINAL = string(BoardFINAL);
% Make bombs "X"
for x = 1:1:length(BombLOC)
    BoardFINAL(BombLOC(x)) = "X";
end
