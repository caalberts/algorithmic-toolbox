require "./majority_element"

describe "#has_majority" do
  it "should return 1 if there is a majority element" do
    # expect(has_majority([0])).to be(1)
    # expect(has_majority([1])).to be(1)
    # expect(has_majority([0, 0])).to be(1)
    # expect(has_majority([1, 1])).to be(1)
    # expect(has_majority([1, 1, 1])).to be(1)
    # expect(has_majority([1, 1, 2])).to be(1)
    # expect(has_majority([1, 2, 1])).to be(1)
    # expect(has_majority([2, 1, 1])).to be(1)
    # expect(has_majority([1, 2, 2, 2])).to be(1)
    # expect(has_majority([2, 1, 2, 2])).to be(1)
    # expect(has_majority([2, 2, 1, 2])).to be(1)
    # expect(has_majority([2, 2, 2, 1])).to be(1)
    # expect(has_majority([1, 1, 2, 2, 2])).to be(1)
    # expect(has_majority([2, 3, 9, 2, 2])).to be(1)
    expect(has_majority([10, 3, 10, 3, 10])).to be(1)
  end

  it "should return -1 if there is no majority element" do
    # expect(has_majority([0, 1])).to be(0)
    # expect(has_majority([1, 0])).to be(0)
    # expect(has_majority([1, 2, 3])).to be(0)
    # expect(has_majority([1, 2, 3, 4])).to be(0)
    # expect(has_majority([2, 1, 2, 1])).to be(0)
    # expect(has_majority([2, 2, 1, 1])).to be(0)
    # expect(has_majority([1, 2, 2, 1])).to be(0)
    # expect(has_majority([1, 2, 3, 1])).to be(0)
  end

  it "should not itme out for large input" do
    # list = (1..100000).to_a
    # expect(has_majority(list)).to be(0)
    #
    # max_list = list.map{|i| i * 10000}
    # expect(has_majority(max_list)).to be(0)
  end
end
