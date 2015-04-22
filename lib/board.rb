class Board

  attr_reader :size, :cells

  def initialize size
    @size = size
    @cells = []
    @size.times { @cells << Cell.new }
  end

end
