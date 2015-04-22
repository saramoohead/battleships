class Board

  attr_reader :size, :cells

  def initialize size
    @size = size
    @cells = Array.new(@size) { Cell.new }
    # @size.times { @cells << Cell.new }
  end

end
