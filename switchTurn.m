function [playerTurn] = switchTurn(currentTurn)
    if currentTurn == 1
        playerTurn = 2;
    else
        playerTurn = 1;
    end
end

