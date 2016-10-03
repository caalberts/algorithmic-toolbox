require "./change"

describe "#change_money" do
  it "should find minimum number of coins equivalent to a value" do
    expect(change_money(1)).to eq(1)
    expect(change_money(2)).to eq(2)
    expect(change_money(28)).to eq(6)
    expect(change_money(187368)).to eq(18740)
    expect(change_money(1000)).to eq(100)
  end
end
