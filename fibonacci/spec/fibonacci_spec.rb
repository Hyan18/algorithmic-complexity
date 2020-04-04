require 'fibonacci'

describe 'Fibonacci' do
  it "should return [] when given 0" do
    expect(Fibonacci.values(0)).to eq([])
  end

  it "should return [0,1,1] when given 3" do
    expect(Fibonacci.values(3)).to eq([0,1,1])
  end

  it "should return [0, 1, 1, 2, 3, 5, 8, 13, 21, 34] when given 10" do
    expect(Fibonacci.values(10)).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34])
  end

end
