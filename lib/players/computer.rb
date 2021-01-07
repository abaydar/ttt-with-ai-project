module Players
    class Computer < Player
        def move(board)
            input = 1
            Board.valid_move?(input)
        end
    end
end