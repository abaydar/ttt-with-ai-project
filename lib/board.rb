class Board
    attr_accessor :cells

    def initialize
        @cells = Array.new(9, " ")
    end

    def reset!
        self.cells = Array.new(9, " ")
    end

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    end

    def position(input)
        cells[input.to_i - 1]
    end

    def full?
        self.cells.all?{|position| position != " "}
    end

    def turn_count
        self.cells.count{|position| position != " "}   
    end

    def taken?(position)
        cell = position.to_i - 1
        self.cells[cell] != " "
    end

    def valid_move?(input)
        cell = input.to_i - 1
        !taken?(input) && cell.between?(0, 8)
    end

    def update(position, player)
       # binding.pry

        cells[position.to_i - 1] = player.token   
        
    end

end