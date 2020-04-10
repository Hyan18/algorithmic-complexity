require 'sub_sequence_sum'

describe 'SubSequenceSum' do
  it 'should return true when given the array [10,3,1,7] with target 8' do
    expect(SubSequenceSum.exists?([10,3,1,7], 8)).to eq(true)
  end

  it 'should return true when given the array [10,3,1,7] with target 10' do
    expect(SubSequenceSum.exists?([10,3,1,7], 10)).to eq(true)
  end

  it 'should return true when given the array [10,3,1,7] with target 21' do
    expect(SubSequenceSum.exists?([10,3,1,7], 21)).to eq(true)
  end

  it 'should return true when given the array [10,3,1,7] with target 22' do
    expect(SubSequenceSum.exists?([10,3,1,7], 22)).to eq(false)
  end

  it 'should return true when given the array [10,3,1,7] with target 17' do
    expect(SubSequenceSum.exists?([10,3,1,7], 17)).to eq(false)
  end

  it 'should return true when given the array [6,4,1,9] with target 5' do
    expect(SubSequenceSum.exists?([6,4,1,9], 5)).to eq(true)
  end

  it 'should return true when given the array [6,4,1,9] with target 3' do
    expect(SubSequenceSum.exists?([6,4,1,9], 3)).to eq(false)
  end
end
