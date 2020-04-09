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

  it 'should return pairings for a list of one name' do
    expect(Pair.run(["Alice"])).to eq (
      [
        [["Alice", "Flying Solo"]]
      ]
    )
  end

  it 'should return pairings for a list of three names' do
    expect(Pair.run(["Alice", "Bob", "Charly", "Flying Solo"])).to eq (
      [
        [["Alice", "Bob"], ["Charly", "Flying Solo"]],
        [["Alice", "Charly"], ["Bob" , "Flying Solo"]],
        [["Alice", "Flying Solo"], ["Bob" , "Charly"]],
      ]
    )
  end

  it 'should return pairings for a list of five names' do
    expect(Pair.run(["Alice", "Bob", "Charly", "Dan", "Eve", "Flying Solo"])).to eq (
      [
        [["Alice", "Bob"], ["Charly", "Dan"], ["Eve", "Flying Solo"]],
        [["Alice", "Charly"], ["Bob" , "Eve"], ["Dan", "Flying Solo"]],
        [["Alice", "Dan"], ["Bob" , "Flying Solo"], ["Charly", "Eve"]],
        [["Alice", "Eve"], ["Bob", "Dan"], ["Charly", "Flying Solo"]],
        [["Alice", "Flying Solo"], ["Bob", "Charly"], ["Dan", "Eve"]],
      ]
    )
  end
end
