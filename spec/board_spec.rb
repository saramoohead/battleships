require 'board'

describe Board do
  let(:board) { Board.new(1) }
  # let(:cell) { double :cell, holds: 'water', is_hit: false }

  it 'has a size' do
    expect(board.size).to eq(1)
  end

  it 'is filled with cells' do
    expect(board.cells.count).to eq(1)
  end

  it 'gives each cell a coordinate' do
    board.name
    first_cell = board.cells[0]
    p first_cell
    expect(first_cell.coordinate).to eq('A1')
  end

end
