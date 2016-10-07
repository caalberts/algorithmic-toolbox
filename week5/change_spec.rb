require "./change"

describe "#greedy_change" do
  it "should calculate minimum number of coins to return" do
    # expect(greedy_change([1, 5, 10, 25], 40)).to eq(3)
    # expect(greedy_change([1, 5, 10, 20, 25], 40)).to eq(3)
  end
end

describe "#recursive_change" do
  it "should calculate minimum number of coins to return" do
    # expect(dynamic_prog_change([1], 1)).to eq(1)
    # expect(dynamic_prog_change([1], 2)).to eq(2)
    # expect(dynamic_prog_change([1, 2], 2)).to eq(1)
    expect(dynamic_prog_change([1, 5, 6], 9)).to eq(4)
    expect(dynamic_prog_change([25, 20, 10, 5, 1].reverse, 40)).to eq(2)
    # expect(dynamic_prog_change([8, 4, 2].reverse, 997)).to eq(2)
  end
end
