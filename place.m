

function [deck1p, deck2p, tableCards] = place(turn,deck1In,deck2In, deckArray)
        
        if turn == 1
            tableCards = [deckArray, deck1In(1)]
            deck1In(1) = [];
            deck1p = deck1In
            deck2p = deck2In
        elseif turn == 2
            tableCards = [deckArray, deck2In(1)]
            deck2In(1) = [];
            deck2p = deck2In
            deck1p = deck1In
        end
end

