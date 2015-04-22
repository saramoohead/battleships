require_relative 'cell'

class Board

  attr_reader :size, :cells

  def initialize size
    @size = size
    @cells = Array.new(@size) { Cell.new }
  end

  def name
    @cells.each do |cell|
      (1..@size).each do |n|
        cell.coordinate = ((64 + n).chr) + n.to_s
      end
    end
  end

end
