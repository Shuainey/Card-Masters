
function keyStroke(turn, deck1, deck2, tableCards)
    keyPressed = waitforbuttonpress;
    val = char(get(gcf, 'CurrentCharacter'));
    if val == 'a' && turn == 1
        place(1, deck1, deck2, tableCards );
    elseif val == 's' && turn == 1
        slap(player1);
    elseif val == 'k' && turn == 2
        place(2, deck1, deck2, tableCards);
    elseif val == 'l' && turn == 2
        slap(player2);
    end
end


