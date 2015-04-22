class Cell

  attr_reader :holds, :is_hit

  DEFAULT_HOLDING = 'water'

  def initialize
    @holds = DEFAULT_HOLDING
    @is_hit = false
  end

  def accept item
    @holds = item
  end

  def hit
    @is_hit = true
  end

end
