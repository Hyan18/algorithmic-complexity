require 'find_duplicates'

describe 'find_duplicates' do
  it "should return [] when given ['one','two']" do
    expect(find_duplicates(['one','two'])).to eq([])
  end
  
  it "should return ['one'] when given ['one','two','one']" do
    expect(find_duplicates(['one','two','one'])).to eq(['one'])
  end

  it "should return ['one', 'two'] when given ['one','two','one','two']" do
    expect(find_duplicates(['one','two','one','two'])).to eq(['one','two'])
  end

  it "should return ['one','two','three'] when given ['one','two','one','two','three','three']" do
    expect(find_duplicates(['one','two','one','two','three','three'])).to eq(['one','two','three'])
  end
end