require 'board'

describe Board do
  let(:board) { Board.new(1) }
  let(:ship) { double :ship }

  it 'has a size' do
    expect(board.size).to eq(1)
  end

  before(:each) do
    board.build_grid
  end

  # must test for larger board, as your formula breaks
  it 'is filled with cells' do
    expect(board.grid.length).to eq(1)
  end

  # must test for larger board, as your formula breaks
  it 'puts each cell a coordinate location' do
    expect(board.grid).to have_key('A1')
  end

  it 'places ships into cells' do
    coordinate = board.grid.fetch('A1')
    coordinate.accept(ship)
    expect(coordinate.holds).to eq(ship)
  end

end
