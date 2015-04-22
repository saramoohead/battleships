require 'cell'

describe Cell do
  let(:cell) { Cell.new }
  let(:ship) { double :ship, size: 1 }

  it 'holds water as default' do
    expect(cell.holds).to eq('water')
  end

  it 'is unhit as default' do
    expect(cell.is_hit).to eq(false)
  end

  it 'can hold a ship' do
    cell.accept(ship)
    expect(cell.holds).to eq(ship)
  end

  it 'can be hit' do
    cell.hit
    expect(cell.is_hit).to eq(true)
  end

end
