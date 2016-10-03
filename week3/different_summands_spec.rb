require "./different_summands"

describe "#allocate_prize" do
  it "should allocate prizes to most number of winners" do
    expect(allocate_prize(1)).to eq([1])
    expect(allocate_prize(2)).to eq([2])
    expect(allocate_prize(3)).to eq([1, 2])
    expect(allocate_prize(6)).to eq([1, 2, 3])
    expect(allocate_prize(8)).to eq([1, 2, 5])

    expect(allocate_prize(10)).to eq([1, 2, 3, 4])
    expect(allocate_prize(20)).to eq([1, 2, 3, 4, 10])
    expect(allocate_prize(18)).to eq([1, 2, 3, 4, 8])
  end

  it "should accept large input" do
    # expect(allocate_prize(1000000000)).to eq([1, 2, 3, 4, 8])
  end
end
