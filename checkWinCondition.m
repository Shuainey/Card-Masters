function winCondition = checkWinCondition(tableCards)
    %Checking if the first 2 cards placed down are slappable
    winCondition = false;
    if length(tableCards) < 2
        winCondition = false;
    elseif length(tableCards) == 2
        lastTwoCards = tableCards(1:2);
        if rem(lastTwoCards(1), 13) == rem(lastTwoCards(2), 13)
            winCondition = true;
        end
    else
        lastThreeCards = tableCards(end-2:end);
        disp(lastThreeCards);
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

