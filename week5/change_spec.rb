require "./change"

describe "#greedy_change" do
  it "should calculate minimum number of coins to return" do
    expect(greedy_change([1, 5, 10, 25], 40)).to eq(3)
    expect(greedy_change([1, 5, 10, 20, 25], 40)).to eq(3)
  end
end

describe "#recursive_change" do
  it "should calculate minimum number of coins to return" do
    expect(recursive_change([6, 5, 1], 9)).to eq(4)
    expect(recursive_change([25, 20, 10, 5, 1], 40)).to eq(2)
    # expect(recursive_change([8, 4, 2], 997)).to eq(2)
  end
end
