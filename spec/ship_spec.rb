require 'ship'

describe Ship do

  let(:ship) { Ship.new(1) }

  it 'has a size' do
    expect(ship.size).to eq(1)
  end

end
