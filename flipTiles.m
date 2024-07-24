function [M] = flipTiles(PositionVector,Board,Player)
%Inputs
%   Position Vector - 1x2 array of the position the tile is placed
%       [2,4] - [rowPos,colPos]
%   Board - starting board (BEFORE the tile is places)
%       2D array of 0,1,or 2
%   Player - who placed the tile
%       scalar 1 or 2

% Place tile on Board
rowPos = PositionVector(1);
colPos = PositionVector(2);
M = Board; %copy Board
M(rowPos, colPos) = Player;

% Flipping logic

% (1) where on the board did they put the tile?
%       rowPos and colPos
if rowPos == 1 && colPos == 1 %top left corner
    if M(rowPos+1 ,colPos) ~= Player && M(rowPos+1 ,colPos) ~= 0 %down
        count = 2;
        while M(rowPos+count, colPos) ~= Player && M(rowPos+count,colPos) ~=0 && rowPos + count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos+count,colPos) == Player
            % I need to flip
            M(rowPos+count:-1:rowPos,colPos) = Player;

        end
    elseif M(rowPos,colPos+1) ~= Player && M(rowPos,colPos+1) ~= 0 %right
        count = 2;
        while M(rowPos, colPos + count) ~= Player && M(rowPos,colPos+count) ~=0 && colPos + count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos,colPos+count) == Player
            % I need to flip
            M(rowPos,colPos+count:-1:colPos) = Player;

        end
    end
elseif rowPos ==1 && colPos == 6 %top right
    if M(rowPos+1 ,colPos) ~= Player && M(rowPos+1 ,colPos) ~= 0 %down
        count = 2;
        while M(rowPos+count, colPos) ~= Player && M(rowPos+count,colPos) ~=0 && rowPos + count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos+count,colPos) == Player
            % I need to flip
            M(rowPos+count:-1:rowPos,colPos) = Player;

        end
    elseif M(rowPos,colPos-1) ~= Player && M(rowPos,colPos-1) ~= 0 %left

        % (3) Check the next and the next until I get to
        %       until I hit player
        %       boundary (r == 1, c===1, r==6, c==6)
        %       empty space (zero)
        count = 2;
        while M(rowPos, colPos - count) ~= Player && M(rowPos,colPos-count) ~=0 && colPos-count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos,colPos-count) == Player
            % I need to flip
            M(rowPos,colPos-count:colPos) = Player;

        end
    end

elseif rowPos == 6 && colPos == 1 %bottom left
    if  M(rowPos-1 ,colPos) ~= Player && M(rowPos-1 ,colPos) ~= 0 %up
        count = 2;
        while M(rowPos-count, colPos) ~= Player && M(rowPos-count,colPos) ~=0 && rowPos - count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos-count,colPos) == Player
            % I need to flip
            M(rowPos-count:rowPos,colPos) = Player;

        end
    elseif M(rowPos,colPos+1) ~= Player && M(rowPos,colPos+1) ~= 0 %right
        count = 2;
        while M(rowPos, colPos + count) ~= Player && M(rowPos,colPos+count) ~=0 && colPos + count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos,colPos+count) == Player
            % I need to flip
            M(rowPos,colPos+count:-1:colPos) = Player;

        end
    end

elseif rowPos==6 && colPos==6 %bottom right
    if  M(rowPos-1 ,colPos) ~= Player && M(rowPos-1 ,colPos) ~= 0 %up
        count = 2;
        while M(rowPos-count, colPos) ~= Player && M(rowPos-count,colPos) ~=0 && rowPos - count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos-count,colPos) == Player
            % I need to flip
            M(rowPos-count:rowPos,colPos) = Player;

        end
    elseif M(rowPos,colPos-1) ~= Player && M(rowPos,colPos-1) ~= 0 %left

        % (3) Check the next and the next until I get to
        %       until I hit player
        %       boundary (r == 1, c===1, r==6, c==6)
        %       empty space (zero)
        count = 2;
        while M(rowPos, colPos - count) ~= Player && M(rowPos,colPos-count) ~=0 && colPos-count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos,colPos-count) == Player
            % I need to flip
            M(rowPos,colPos-count:colPos) = Player;

        end
    end
elseif rowPos == 1 %top
    if M(rowPos+1 ,colPos) ~= Player && M(rowPos+1 ,colPos) ~= 0 %down
        count = 2;
        while M(rowPos+count, colPos) ~= Player && M(rowPos+count,colPos) ~=0 && rowPos + count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos+count,colPos) == Player
            % I need to flip
            M(rowPos+count:-1:rowPos,colPos) = Player;

        end
    elseif M(rowPos,colPos-1) ~= Player && M(rowPos,colPos-1) ~= 0 %left

        % (3) Check the next and the next until I get to
        %       until I hit player
        %       boundary (r == 1, c===1, r==6, c==6)
        %       empty space (zero)
        count = 2;
        while M(rowPos, colPos - count) ~= Player && M(rowPos,colPos-count) ~=0 && colPos-count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos,colPos-count) == Player
            % I need to flip
            M(rowPos,colPos-count:colPos) = Player;

        end
    elseif M(rowPos,colPos+1) ~= Player && M(rowPos,colPos+1) ~= 0 %right
        count = 2;
        while M(rowPos, colPos + count) ~= Player && M(rowPos,colPos+count) ~=0 && colPos + count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos,colPos+count) == Player
            % I need to flip
            M(rowPos,colPos+count:-1:colPos) = Player;

        end
    end
elseif rowPos == 6 %bottom
    if  M(rowPos-1 ,colPos) ~= Player && M(rowPos-1 ,colPos) ~= 0 %up
        count = 2;
        while M(rowPos-count, colPos) ~= Player && M(rowPos-count,colPos) ~=0 && rowPos - count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos-count,colPos) == Player
            % I need to flip
            M(rowPos-count:rowPos,colPos) = Player;

        end
    elseif M(rowPos,colPos-1) ~= Player && M(rowPos,colPos-1) ~= 0 %left

        % (3) Check the next and the next until I get to
        %       until I hit player
        %       boundary (r == 1, c===1, r==6, c==6)
        %       empty space (zero)
        count = 2;
        while M(rowPos, colPos - count) ~= Player && M(rowPos,colPos-count) ~=0 && colPos-count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos,colPos-count) == Player
            % I need to flip
            M(rowPos,colPos-count:colPos) = Player;

        end
    elseif M(rowPos,colPos+1) ~= Player && M(rowPos,colPos+1) ~= 0 %right
        count = 2;
        while M(rowPos, colPos + count) ~= Player && M(rowPos,colPos+count) ~=0 && colPos + count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos,colPos+count) == Player
            % I need to flip
            M(rowPos,colPos+count:-1:colPos) = Player;

        end
    end
elseif colPos == 1 %leftside
    if  M(rowPos-1 ,colPos) ~= Player && M(rowPos-1 ,colPos) ~= 0 %up
        count = 2;
        while M(rowPos-count, colPos) ~= Player && M(rowPos-count,colPos) ~=0 && rowPos - count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos-count,colPos) == Player
            % I need to flip
            M(rowPos-count:rowPos,colPos) = Player;

        end
    elseif M(rowPos+1 ,colPos) ~= Player && M(rowPos+1 ,colPos) ~= 0 %down
        count = 2;
        while M(rowPos+count, colPos) ~= Player && M(rowPos+count,colPos) ~=0 && rowPos + count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos+count,colPos) == Player
            % I need to flip
            M(rowPos+count:-1:rowPos,colPos) = Player;

        end
    elseif M(rowPos,colPos+1) ~= Player && M(rowPos,colPos+1) ~= 0 %right
        count = 2;
        while M(rowPos, colPos + count) ~= Player && M(rowPos,colPos+count) ~=0 && colPos + count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos,colPos+count) == Player
            % I need to flip
            M(rowPos,colPos+count:-1:colPos) = Player;

        end
    end
elseif colPos == 6 %rightside
    if  M(rowPos-1 ,colPos) ~= Player && M(rowPos-1 ,colPos) ~= 0 %up
        count = 2;
        while M(rowPos-count, colPos) ~= Player && M(rowPos-count,colPos) ~=0 && rowPos - count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos-count,colPos) == Player
            % I need to flip
            M(rowPos-count:rowPos,colPos) = Player;

        end
    elseif M(rowPos+1 ,colPos) ~= Player && M(rowPos+1 ,colPos) ~= 0 %down
        count = 2;
        while M(rowPos+count, colPos) ~= Player && M(rowPos+count,colPos) ~=0 && rowPos + count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos+count,colPos) == Player
            % I need to flip
            M(rowPos+count:-1:rowPos,colPos) = Player;

        end
    elseif M(rowPos,colPos-1) ~= Player && M(rowPos,colPos-1) ~= 0 %left

        % (3) Check the next and the next until I get to
        %       until I hit player
        %       boundary (r == 1, c===1, r==6, c==6)
        %       empty space (zero)
        count = 2;
        while M(rowPos, colPos - count) ~= Player && M(rowPos,colPos-count) ~=0 && colPos-count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos,colPos-count) == Player
            % I need to flip
            M(rowPos,colPos-count:colPos) = Player;

        end
    end
else %else
    % (2) Check in all available directions where a different player is next to
    % it
    %       if the other player is nextto where the tile is place
    %       not equal to Player and not equal to Zero
    if  M(rowPos-1 ,colPos) ~= Player && M(rowPos-1 ,colPos) ~= 0 %up
        count = 2;
        while M(rowPos-count, colPos) ~= Player && M(rowPos-count,colPos) ~=0 && rowPos - count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos-count,colPos) == Player
            % I need to flip
            M(rowPos-count:rowPos,colPos) = Player;

        end

    elseif M(rowPos+1 ,colPos) ~= Player && M(rowPos+1 ,colPos) ~= 0 %down
        count = 2;
        while M(rowPos+count, colPos) ~= Player && M(rowPos+count,colPos) ~=0 && rowPos + count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos+count,colPos) == Player
            % I need to flip
            M(rowPos+count:-1:rowPos,colPos) = Player;

        end

    elseif M(rowPos,colPos-1) ~= Player && M(rowPos,colPos-1) ~= 0 %left

        % (3) Check the next and the next until I get to
        %       until I hit player
        %       boundary (r == 1, c===1, r==6, c==6)
        %       empty space (zero)
        count = 2;
        while M(rowPos, colPos - count) ~= Player && M(rowPos,colPos-count) ~=0 && colPos-count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos,colPos-count) == Player
            % I need to flip
            M(rowPos,colPos-count:colPos) = Player;

        end

    elseif  M(rowPos,colPos+1) ~= Player && M(rowPos,colPos+1) ~= 0 %right
        count = 2;
        while M(rowPos, colPos + count) ~= Player && M(rowPos,colPos+count) ~=0 && colPos + count >= 1
            % (4) Why did we stop?
            %       if we stopped because we hit player, them flip
        end
        if M(rowPos,colPos+count) == Player
            % I need to flip
            M(rowPos,colPos+count:-1:colPos) = Player;

        end

    end
end
