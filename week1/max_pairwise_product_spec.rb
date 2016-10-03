require "./max_pairwise_product"

describe "#max_pairwise_product" do
  it "should calculate maximum pair product" do
    expect(max_pairwise_product([1, 2, 3])).to be(6)
    expect(max_pairwise_product([3, 1, 2])).to be(6)
  end

  it "should calculate product of large numbers" do
    expect(max_pairwise_product([100000, 90000])).to be(9000000000)
  end
end
