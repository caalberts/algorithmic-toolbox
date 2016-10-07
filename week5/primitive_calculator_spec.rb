require "./primitive_calculator"

describe "#steps" do
  it "should return the minimum number of operations" do
    expect(steps(1)).to eq([1])
    expect(steps(2)).to eq([1, 2])
    expect(steps(3)).to eq([1, 3])
    expect(steps(4)).to eq([1, 3, 4])
    expect(steps(5)).to eq([1, 3, 4, 5])
    expect(steps(6)).to eq([1, 2, 6])
    expect(steps(7)).to eq([1, 2, 6, 7])
    expect(steps(10)).to eq([1, 3, 9, 10])
  end

  it "should pass sample test" do
    # expect(steps(1)).to eq({steps: 0, nums: [1]})
    # expect(steps(5)).to eq([1, 2, 4, 5])
    expect(steps(500)).to eq([1, 3, 9, 27, 81, 82, 83, 249, 250, 500])
    expect(steps(96234)).to eq([1, 3, 9, 10, 11, 22, 66, 198, 594, 1782, 5346, 16038, 16039, 32078, 96234])
  end
end
