require "./party"

describe "#group_children" do
  it "group children into the least number of groups" do
    expect(group_children([1])).to be(1)
    expect(group_children([1, 2])).to be(1)
    expect(group_children([1, 2, 3])).to be(2)
    expect(group_children([1, 2, 3, 4])).to be(2)
    expect(group_children([1, 1.2, 1.4, 2, 3, 4])).to be(2)
    expect(group_children([1, 1.2, 1.4, 2.5, 3, 4])).to be(3)
  end
end
