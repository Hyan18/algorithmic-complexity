require 'pair'

describe 'Pair' do
  it 'should return a pairing for a list of two names' do
    expect(Pair.run(["Alice", "Bob"])).to eq (
      [
        [["Alice", "Bob"]]
      ]
    )
  end

  it 'should return a pairing for a list of four names' do
    expect(Pair.run(["Alice", "Bob", "Charly", "Dan"])).to eq (
      [
        [["Alice", "Bob"], ["Charly", "Dan"]],
        [["Alice", "Charly"], ["Bob" , "Dan"]],
        [["Alice", "Dan"], ["Bob" , "Charly"]],
      ]
    )
  end
end
