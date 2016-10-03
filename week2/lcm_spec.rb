require "./lcm"

describe "#lcm" do
  it "should give lowest common multiple" do
    expect(lcm(1, 1)).to be(1)
    expect(lcm(2, 3)).to be(6)
    expect(lcm(6, 8)).to be(24)
    expect(lcm(10, 4)).to be(20)
    expect(lcm(28851538, 1183019)).to be(1933053046)
  end
end
