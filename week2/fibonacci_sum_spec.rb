require "./fibonacci_sum"

describe "#fibonacci_sum" do
  it "should return the last digit of sum of the first n Fibonacci numbers" do
    expect(fibonacci_sum(0)).to be(0)
    expect(fibonacci_sum(1)).to be(1)
    expect(fibonacci_sum(2)).to be(2)
    expect(fibonacci_sum(3)).to be(4)
    expect(fibonacci_sum(4)).to be(7)
    expect(fibonacci_sum(5)).to be(2)
    expect(fibonacci_sum(6)).to be(0)

    expect(fibonacci_sum(100)).to be(5)
    expect(fibonacci_sum(613455)).to be(6)
    expect(fibonacci_sum(614162383528)).to be(9)
  end
end
