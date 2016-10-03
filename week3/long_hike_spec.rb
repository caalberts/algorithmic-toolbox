require "./long_hike"

describe "#pack" do
  it "should fit the most amount of energy value" do
    items = [
      {
        weight: 1,
        value: 2
      }, {
        weight: 1,
        value: 1
      }
    ]
    expect(pack(items, 1)).to be(2.0)
    expect(pack(items, 2)).to be(3.0)
  end

  it "should fit partial items" do
    items = [
      {
        weight: 2,
        value: 2
      }, {
        weight: 2,
        value: 1
      }
    ]
    expect(pack(items, 3)).to eq(2.5)
  end

  it "should fit unsorted items" do
    items = [
      {
        weight: 3,
        value: 6
      }, {
        weight: 3,
        value: 4
      }, {
        weight: 2,
        value: 5
      }
    ]
    expect(pack(items, 3)).to eq(7.0)
  end
end
