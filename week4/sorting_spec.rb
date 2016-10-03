require "./sorting"

describe "#sort" do
  it "should sort an array of numbers" do
    # expect(sort([1])).to eq([1])
    # expect(sort([1, 2])).to eq([1, 2])
    # expect(sort([2, 1])).to eq([1, 2])
    # expect(sort([1, 2, 3])).to eq([1, 2, 3])
    # expect(sort([1, 3, 2])).to eq([1, 2, 3])
    # expect(sort([2, 3, 1])).to eq([1, 2, 3])
    # expect(sort([2, 2, 1])).to eq([1, 2, 2])
    expect(sort([2, 3, 9, 2, 2])).to eq([2, 2, 2, 3, 9])
    expect(sort([9, 7, 6, 5, 3])).to eq([3, 5, 6, 7, 9])
  end
end

describe "#partition2" do
  it "should partition an array 2 ways" do
    # expect(partition2([1], 0, 0)).to eq(0)
    # expect(partition2([1, 2], 0, 1)).to eq(0)
    # expect(partition2([1, 2, 3], 0, 2)).to eq(0)
  end
end

describe "#partition3" do
  it "should partition an array 3 ways" do
    # expect(partition3([1], 0, 0)).to eq([0, 0])
    # expect(partition3([1, 2], 0, 1)).to eq([0, 0])
    # expect(partition3([1, 2, 3], 0, 2)).to eq([0, 0])
    # expect(partition3([2, 1, 3], 0, 2)).to eq([1, 1])
    # expect(partition3([3, 1, 2], 0, 2)).to eq([2, 2])
    # expect(partition3([3, 2, 1], 0, 2)).to eq([2, 2])
    # expect(partition3([1, 1], 0, 1)).to eq([0, 1])
    expect(partition3([1, 1, 1], 0, 2)).to eq([0, 2])
    expect(partition3([1, 2, 1], 0, 2)).to eq([0, 1])
    expect(partition3([2, 2, 1], 0, 2)).to eq([1, 2])
    expect(partition3([2, 1, 2], 0, 2)).to eq([1, 2])
    expect(partition3([3, 1, 2, 3], 0, 3)).to eq([2, 3])
    expect(partition3([2, 1, 2, 3], 0, 3)).to eq([1, 2])
    expect(partition3([2, 3, 1, 2], 0, 3)).to eq([1, 2])
  end
end
