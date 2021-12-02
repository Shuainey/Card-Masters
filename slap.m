function [deck1, deck2, tableCards] = slap(playerNum, deckIn1, deckIn2, tableCardsIn)
    if (playerNum == 1)
        if checkWinCondition(tableCardsIn) 
            deck1 = [deckIn1, tableCardsIn];
            tableCards = [];
        else 
            tableCards = [deckIn1(1), tableCardsIn];
            deckIn1(1) = [];
            deck1 = deckIn1;
        end
    elseif(playerNum == 2)
        if checkWinCondition(tableCardsIn) 
            deck2 = [deckIn2, tableCardsIn];
            tableCards = []; 
        else 
            tableCards = [deckIn2(1), tableCardsIn];
            deckIn2(1) = [];
            deck2 = deckIn2;
        end
    end

end
