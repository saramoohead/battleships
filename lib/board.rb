require_relative 'cell'

class Board

  attr_reader :size, :grid

  def initialize size_on_one_side
    @size = size_on_one_side
    @grid = {}
  end

  def build_grid
    (1..@size).each do |n|
      @grid.[]=(('A' + n.to_s), Cell.new)
    end
    p '*' * 20
    p @grid
  end

  # def place ship, coordinate
  #   p @grid
  # end

end
