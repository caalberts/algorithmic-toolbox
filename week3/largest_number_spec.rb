require "./largest_number"

describe "#largest_number" do
  it "should find the largest number possible" do
    expect(largest_number([1, 2])).to eq(21)
    expect(largest_number([1, 2, 3])).to eq(321)
    expect(largest_number([1, 20, 3])).to eq(3201)
    expect(largest_number([1, 2, 3, 10])).to eq(32110)
    expect(largest_number([21, 2])).to eq(221)
    expect(largest_number([9, 4, 6, 1, 9])).to eq(99641)
    expect(largest_number([23, 39, 92])).to eq(923923)
  end

  it "should accept large input" do
    list = (1..100).to_a.map{ |i| rand(1000) }
    expect(largest_number(list)).to eq(1)
  end
end

describe "#pick_n" do
  it "should return true if n meets criteria" do
    expect(pick_n(1, 2)).to be(false)
    expect(pick_n(2, 1)).to be(true)
    expect(pick_n(11, 22)).to be(false)
    expect(pick_n(22, 11)).to be(true)
    expect(pick_n(23, 24)).to be(false)
    expect(pick_n(27, 24)).to be(true)
    expect(pick_n(3, 21)).to be(true)
    expect(pick_n(3, 24)).to be(true)
    expect(pick_n(3, 23)).to be(true)
    expect(pick_n(3, 32)).to be(true)
    expect(pick_n(3, 34)).to be(false)
    expect(pick_n(1, 10)).to be(true)
    expect(pick_n(3, 333)).to be(true)
    expect(pick_n(3, 334)).to be(false)
    expect(pick_n(3, 332)).to be(true)
    expect(pick_n(10, 1)).to be(false)
    expect(pick_n(3, 20)).to be(true)
    expect(pick_n(1, 20)).to be(false)
    expect(pick_n(2, 313)).to be(false)
    expect(pick_n(221, 32)).to be(false)

    expect(pick_n(12, 1)).to be(true)
    expect(pick_n(11, 1)).to be(true)
    expect(pick_n(456, 4)).to be(true)
    expect(pick_n(456, 459)).to be(false)
    expect(pick_n(456, 5)).to be(false)
    expect(pick_n(858, 85)).to be(true)

    expect(pick_n(232, 23)).to be(false)
    expect(pick_n(202, 20)).to be(true)
  end
end
