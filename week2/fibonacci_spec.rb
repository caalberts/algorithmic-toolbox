require "./fibonacci"

describe "#fibonacci" do
  it "should generate nth fibonacci number" do
    expect(fibonacci(0)).to be(0)
    expect(fibonacci(1)).to be(1)
    expect(fibonacci(2)).to be(1)
    expect(fibonacci(3)).to be(2)
    expect(fibonacci(4)).to be(3)
    expect(fibonacci(5)).to be(5)
    expect(fibonacci(6)).to be(8)
  end

  # it "should generate 5 numbers" do
  #   fib = generate_fibonacci(5)
  #   expect(fib).to eql([1, 1, 2, 3, 5])
  # end
end
