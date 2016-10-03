require "./fibonacci_last_digit"

describe "#fibonacci_last_digit" do
  it "should get the last digit of fibonacci number" do
    expect(fibonacci_last_digit(1)).to be(1)
    expect(fibonacci_last_digit(3)).to be(2)
    expect(fibonacci_last_digit(5)).to be(5)
    expect(fibonacci_last_digit(7)).to be(3)
    expect(fibonacci_last_digit(9)).to be(4)
    expect(fibonacci_last_digit(331)).to be(9)
    expect(fibonacci_last_digit(327305)).to be(5)
  end

  # it "should generate 5 numbers" do
  #   fib = generate_fibonacci(5)
  #   expect(fib).to eql([1, 1, 2, 3, 5])
  # end
end

# 0 1 1 2 3 5 8 13 21 34
