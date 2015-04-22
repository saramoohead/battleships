require 'game'

describe Game do

  let(:game) { Game.new }
  let(:cell) { double :cell, holds: 'ship', is_hit: 'false' }

  xit 'knows the number of ship cells on the board' do
    expect(game.ships_on_board).to eq(1)
  end

end

# for each cell on the board, how many are ships?
# for each ship cell on the board, how many are hit?
