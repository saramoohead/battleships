require 'board'

describe Board do
  let(:board) { Board.new(1) }
  let(:ship) { double :ship }
  # let(:cell) { double :cell, holds: 'water', is_hit: false }

  it 'has a size' do
    expect(board.size).to eq(1)
  end

  # must test for larger board, as your formula breaks
  it 'is filled with cells' do
    board.build_grid
    expect(board.grid.length).to eq(1)
  end

  # must test for larger board, as your formula breaks
  it 'puts each cell a coordinate location' do
    board.build_grid
    expect(board.grid).to have_key('A1')
    p board.grid
  end

  it 'places ships into cells' do
    board.build_grid
    coordinate = board.grid.fetch('A1')
    coordinate.accept(ship)
    expect(coordinate.holds).to eq(ship)
    p board.grid
  end

end
