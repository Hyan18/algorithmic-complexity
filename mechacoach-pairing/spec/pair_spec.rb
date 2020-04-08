require 'pair'

describe 'Pair' do
  it 'should return a pairing for a list of two names' do
    expect(Pair.run(["Alice", "Bob"])).to eq (
      [
        [["Alice", "Bob"]] # pairing for day 1
      ]
    )
  end
end
