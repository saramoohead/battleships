class Cell

  attr_accessor :coordinate
  attr_reader :holds, :is_hit

  DEFAULT_HOLDING = 'water'

  def initialize coordinate = 'to be set by board'
    @holds = DEFAULT_HOLDING
    @is_hit = false
    @coordinate = coordinate
  end

  def accept item
    @holds = item
  end

  def hit
    @is_hit = true
  end

end
