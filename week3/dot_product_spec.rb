require "./dot_product"

describe "#dot_product" do
  it "should return the highest dot product" do
    expect(dot_product(1, [1], [1])).to eq(1)
    expect(dot_product(1, [2], [1])).to eq(2)
    expect(dot_product(1, [2, 1], [1, 1])).to eq(3)
    expect(dot_product(1, [2, 1], [1, 2])).to eq(5)

    expect(dot_product(1, [23], [39])).to eq(897)
    expect(dot_product(3, [1, 3, -5], [-2, 4, 1])).to eq(23)
  end
end
