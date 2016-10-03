require "./fibonacci_partial_sum"

describe "#fibonacci_partial_sum" do
  it "should return the last digit of partial sum between m and n Fibonacci numbers" do

    expect(fibonacci_partial_sum(3, 7)).to be(1)
    expect(fibonacci_partial_sum(10, 10)).to be(5)
    expect(fibonacci_partial_sum(10, 200)).to be(2)
  end
end
