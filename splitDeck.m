function [deck1, deck2] = splitDeck()
    deck = [1:52];
    deck1 = [];
    for i = 1:26
        r = randi([1 length(deck)]);
        deck1 = [deck1, deck(r)];
        deck(r) = [];
    end
    deck2 = deck;
end

