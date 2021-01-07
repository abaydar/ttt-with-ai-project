module Players
    class Human < Player
        def move(board)
            input = gets.strip
            board.cells[input.to_i - 1] = input 
        end

    end
end