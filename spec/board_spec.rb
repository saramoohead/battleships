require 'board'

describe Board do
  let(:board) { Board.new(1) }

  it 'has a size' do
    expect(board.size).to eq(1)
  end

end
