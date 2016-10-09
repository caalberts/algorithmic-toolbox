require "./knapsac"

describe "#dynamic_pack" do
  it "should pass sample test" do
    expect(dynamic_pack(1, [1])).to eq(1)
    expect(dynamic_pack(1, [2])).to eq(0)
    expect(dynamic_pack(2, [2])).to eq(2)
    expect(dynamic_pack(2, [1, 2])).to eq(2)
    expect(dynamic_pack(2, [2, 1])).to eq(2)
    expect(dynamic_pack(2, [2, 4])).to eq(2)
    expect(dynamic_pack(2, [4, 8])).to eq(0)
    expect(dynamic_pack(3, [2, 4])).to eq(2)
    expect(dynamic_pack(5, [1, 2, 4])).to eq(5)
    expect(dynamic_pack(5, [1, 3, 4])).to eq(5)
    expect(dynamic_pack(6, [1, 3, 4])).to eq(5)
    expect(dynamic_pack(10, [1, 4, 8])).to eq(9)
    expect(dynamic_pack(20, [5, 7, 12, 18])).to eq(19)
  end
end
