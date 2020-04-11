require 'move_zeros'

describe 'MoveZeros' do
  it 'should return [1,3,12,0,0] when given [0,1,0,3,12]' do
    a = [0,1,0,3,12]
    MoveZeros.run(a)
    expect(a).to eq([1,3,12,0,0])
  end

  it 'should return [12,1,3,0,0] when given [12,0,0,1,3]' do
    a = [12,0,0,1,3]
    MoveZeros.run(a)
    expect(a).to eq([12,1,3,0,0])
  end
end
