require "./gcd.rb"

describe "#gcd" do
  it "should calculate greatest common divisor" do
    expect(gcd(1, 1)).to be(1)
    expect(gcd(2, 1)).to be(1)
    expect(gcd(2, 3)).to be(1)
    expect(gcd(6, 8)).to be(2)
    expect(gcd(10, 4)).to be(2)
    expect(gcd(18, 35)).to be(1)
    expect(gcd(81, 54)).to be(27)
    expect(gcd(54, 81)).to be(27)
  end

  it "should calculate greatest common divisor for large numbers" do
    expect(gcd(3918848, 1653264)).to be(61232)
    expect(gcd(357, 234)).to be(3)
    expect(gcd(28851538, 1183019)).to be(17657)
    expect(gcd(1183019, 28851538)).to be(17657)
  end
end
