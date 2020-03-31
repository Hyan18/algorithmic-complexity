require 'insertion_sort'

describe 'InsertionSort' do
  it 'should return [0, 1] when given [1,0]' do
    expect(InsertionSort.run([1,0])).to eq([0,1])
  end

  it 'should return [1,2,3] when given [1,3,2]' do
    expect(InsertionSort.run([1,3,2])).to eq([1,2,3])
  end

  it 'should return [1,3,4,7,10] when given [7,10,1,4,3]' do
    expect(InsertionSort.run([7,10,1,4,3])).to eq([1,3,4,7,10])
  end
end
