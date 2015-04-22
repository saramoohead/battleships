require 'cell'

describe Cell do
  let(:cell) { Cell.new }
  let(:ship) { double :ship, size: 1 }

  it 'holds water as a default' do
    expect(cell.holds).to eq('water')
  end

  it 'can hold a ship' do
    cell.accept(ship)
    expect(cell.holds).to eq(ship)
  end

end
