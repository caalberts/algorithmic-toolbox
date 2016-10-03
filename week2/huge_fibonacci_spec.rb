require "./huge_fibonacci"

describe "#huge_fibonacci" do
  it "should calculage fibonacci modulo m" do
    expect(huge_fibonacci(0, 2)).to be(0)
    expect(huge_fibonacci(0, 3)).to be(0)

    expect(huge_fibonacci(1, 2)).to be(1)
    expect(huge_fibonacci(1, 3)).to be(1)

    expect(huge_fibonacci(2, 2)).to be(1)
    expect(huge_fibonacci(2, 3)).to be(1)

    expect(huge_fibonacci(3, 2)).to be(0)
    expect(huge_fibonacci(3, 3)).to be(2)

    expect(huge_fibonacci(4, 2)).to be(1)
    expect(huge_fibonacci(4, 3)).to be(0)

    expect(huge_fibonacci(6, 2)).to be(0)
    expect(huge_fibonacci(6, 3)).to be(2)

    expect(huge_fibonacci(9, 2)).to be(0)
    expect(huge_fibonacci(9, 3)).to be(1)

    expect(huge_fibonacci(15, 2)).to be(0)
    expect(huge_fibonacci(15, 3)).to be(1)

    expect(huge_fibonacci(1, 239)).to be(1)

    expect(huge_fibonacci(239, 1000)).to be(161)

    expect(huge_fibonacci(2816213588, 30524)).to be(10249)

    expect(huge_fibonacci(100, 100000)).to be(15075)
  end

  describe "#pisano_period" do
    it "should generate pisano period" do
      expect(pisano_period(2)).to eql(3)
      expect(pisano_period(3)).to eql(8)
      expect(pisano_period(9)).to eql(24)
      expect(pisano_period(10)).to eql(60)
      expect(pisano_period(24)).to eql(24)
      expect(pisano_period(97)).to eql(196)
      expect(pisano_period(24476)).to eql(42)
    end
  end

end
