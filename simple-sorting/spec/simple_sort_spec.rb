require 'simple_sort'

describe 'SimpleSort' do
  it 'should return [0] when given [0]' do
    expect(SimpleSort.run([0])).to eq([0])
  end

  it 'should return [0, 1] when given [0, 1]' do
    expect(SimpleSort.run([0, 1])).to eq([0, 1])
  end

  it 'should return [0, 1] when given [1, 0]' do
    expect(SimpleSort.run([1, 0])).to eq([0, 1])
  end

  it 'should return [0, 0, 0, 1 ,1] when given [0, 1, 0, 0 ,1]' do
    expect(SimpleSort.run([0, 1, 0, 0 ,1])).to eq([0, 0, 0, 1 ,1])
  end
end
