require 'reverse'

describe 'reverse' do
  it 'should return [2,1] when given [1,2]' do
    expect(reverse([1,2])).to eq([2,1])
  end

  it 'should return [2,3,5] when given [5,3,2]' do
    expect(reverse([5,3,2])).to eq([2,3,5])
  end

  it 'should return [2,3,5,1] when given [1,5,3,2]' do
    expect(reverse([1,5,3,2])).to eq([2,3,5,1])
  end
end
