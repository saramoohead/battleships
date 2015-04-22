require 'board'

describe Board do
  let(:board) { Board.new(1) }
  # let(:cell) { double :cell, holds: 'water', is_hit: false }

  it 'has a size' do
    expect(board.size).to eq(1)
  end

  it 'is filled with cells' do
    p board.cells
    expect(board.cells.count).to eq(1)
  end

end
