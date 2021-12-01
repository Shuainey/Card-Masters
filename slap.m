function slap(deck1, tableCards)
    if checkWinCondition(tableCards) 
        deck1 = [deck1, tableCards];
        tableCards = [];
    else 
        tableCards = [deck1(1), tableCards];
        deck1(1) = [];
    end
end
