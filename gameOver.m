function gameOver = gameOver(deck1, deck2)
    if length(deck1) == 52
        gameOver = true;
        disp("Player1 has Won!");
    elseif length(deck2) == 52
        gameOver = true;
        disp("Player2 has Won!");
    else
        gameOver = false;
    end
end

