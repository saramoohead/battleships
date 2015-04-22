require 'board'

describe Board do
  let(:board) { Board.new(10) }
  let(:ship) { double :ship }
  let(:cell) { double :cell, holds: 'water', is_hit: false, coordinate: 'A1' }

  it 'has a size' do
    expect(board.size).to eq(10)
  end

  it 'is filled with cells' do
    expect(board.grid.count).to eq(100)
  end

  # must test for larger board, as your formula breaks
  it 'gives each cell a coordinate' do
    board.build_grid
    first_cell = board.grid[0]
    p first_cell
    expect(first_cell.coordinate).to eq('A1')
  end

  it 'places ships into cells' do
    board.place(ship, cell)
    expect(cell.holds).to eq(ship)
  end

end
