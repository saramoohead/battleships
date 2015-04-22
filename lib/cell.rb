class Cell

  attr_reader :holds

  DEFAULT = 'water'

  def initialize
    @holds = DEFAULT
  end

  def accept item
    @holds = item
  end

end
