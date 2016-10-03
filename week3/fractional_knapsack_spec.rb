require "./fractional_knapsack"

describe "#pack" do
  it "should maximize value" do
    items = [
      {
        value: 60.0,
        weight: 20.0
      }, {
        value: 100.0,
        weight: 50.0
      }, {
        value: 120.0,
        weight: 30.0
      }
    ]
    expect(pack(items, 50)).to eq(180.0)

    items_2 = [
      {
        value: 500.0,
        weight: 30.0
      }
    ]
    expect(pack(items_2, 10)).to be_within(0.1).of(166.6667)
  end
end
