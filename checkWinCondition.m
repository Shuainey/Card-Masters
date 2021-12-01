function winCondition = checkWinCondition(tableCards)
    %Checking if the first 2 cards placed down are slappable
    winCondition = false;
    
    if length(tableCards) < 3
        lastTwoCards = tableCards(1:2);
        if rem(lastTwoCards(1), 13) == rem(lastTwoCards(2), 13)
            winCondition = true;
        end
    else
        lastThreeCards = tableCards(end-2:end);
        %Checking a duplicate
        if rem(lastThreeCards(2), 13) == rem(lastThreeCards(3), 13)
            winCondition = true;
        end
        % Checking a sandwich
        if rem(lastThreeCards(1), 13) == rem(lastThreeCards(3), 13)
            winCondition = true;
        end 
    end
end

