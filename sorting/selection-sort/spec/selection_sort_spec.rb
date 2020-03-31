require 'selection_sort'

describe 'SelectionSort' do
  it 'should return [0, 1] when given [1,0]' do
    expect(SelectionSort.run([1,0])).to eq([0,1])
  end

  it 'should return [1,2,3] when given [1,3,2]' do
    expect(SelectionSort.run([1,3,2])).to eq([1,2,3])
  end

  it 'should return [1,1,2] when given [1,2,1]' do
    expect(SelectionSort.run([1,2,1])).to eq([1,1,2])
  end

  it 'should return [1,3,4,7,10] when given [7,10,1,4,3]' do
    expect(SelectionSort.run([7,10,1,4,3])).to eq([1,3,4,7,10])
  end
end
