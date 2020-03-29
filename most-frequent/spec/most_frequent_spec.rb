require 'most_frequent'

describe 'MostFrequent' do
  it "should return [] when given []" do
    expect(MostFrequent.run([])).to eq([])
  end

  it "should return ['one'] when given ['one']" do
    expect(MostFrequent.run(['one'])).to eq(['one'])
  end

  it "should return ['one','two'] when given ['one','two']" do
    expect(MostFrequent.run(['one','two'])).to eq(['one','two'])
  end

  it "should return ['one','two'] when given ['one','two','one','two','three']" do
    expect(MostFrequent.run(['one','two','one','two','three'])).to eq(['one','two'])
  end
end
