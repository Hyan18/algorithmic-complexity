require 'pair'

describe 'Pair' do
  it 'should return pairings for a list of two names' do
    expect(Pair.run(["Alice", "Bob"])).to eq (
      [
        [["Alice", "Bob"]]
      ]
    )
  end

  it 'should return pairings for a list of four names' do
    expect(Pair.run(["Alice", "Bob", "Charly", "Dan"])).to eq (
      [
        [["Alice", "Bob"], ["Charly", "Dan"]],
        [["Alice", "Charly"], ["Bob" , "Dan"]],
        [["Alice", "Dan"], ["Bob" , "Charly"]],
      ]
    )
  end

  it 'should return pairings for a list of six names' do
    expect(Pair.run(["Alice", "Bob", "Charly", "Dan", "Eve", "Fred"])).to eq (
      [
        [["Alice", "Bob"], ["Charly", "Dan"], ["Eve", "Fred"]],
        [["Alice", "Charly"], ["Bob" , "Eve"], ["Dan", "Fred"]],
        [["Alice", "Dan"], ["Bob" , "Fred"], ["Charly", "Eve"]],
        [["Alice", "Eve"], ["Bob", "Dan"], ["Charly", "Fred"]],
        [["Alice", "Fred"], ["Bob", "Charly"], ["Dan", "Eve"]],
      ]
    )
  end
end
