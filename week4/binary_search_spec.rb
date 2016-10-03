require "./binary_search"

describe "#search" do
  it "should find an element in an array" do
    expect(search(1, [1])).to eq(0)
    expect(search(1, [1, 2])).to eq(0)
    expect(search(2, [1, 2])).to eq(1)
    expect(search(1, [1, 2, 3])).to eq(0)
    expect(search(2, [1, 2, 3])).to eq(1)
    expect(search(3, [1, 2, 3])).to eq(2)
    expect(search(5, [1, 2, 5, 6])).to eq(2)
  end

  it "should return -1 if element is not found" do
    expect(search(1, [])).to eq(-1)
    expect(search(4, [1, 2, 3])).to eq(-1)
    expect(search(1, [2, 3, 4])).to eq(-1)
    expect(search(4, [2, 3, 5])).to eq(-1)
    expect(search(3, [1, 2, 5, 6])).to eq(-1)
  end

  it "should pass sample test" do
    expect(search(8, [1, 5, 8, 12, 13])).to eq(2)
    expect(search(1, [1, 5, 8, 12, 13])).to eq(0)
    expect(search(23, [1, 5, 8, 12, 13])).to eq(-1)
    expect(search(1, [1, 5, 8, 12, 13])).to eq(0)
    expect(search(11, [1, 5, 8, 12, 13])).to eq(-1)
  end

  it "should not time out for large sequence" do
    input = (1..100000).to_a

    [1, 50, 2534, 4781, 5231, 7923, 10000].each do |test|
      expect(search(test, input)).to eq(test - 1)
    end

    expect(search(1231112, input)).to eq(-1)
  end

  it "should not time out for large integers" do
    input = (1..100000).to_a.map{|i| i*10000}

    tests = [1, 50, 2534, 4781, 5231, 7923, 10000].map{|i| i*10000}

    tests.each do |test|
      expect(search(test, input)).to eq(test/10000 - 1)
    end
    expect(search(12312390809801231112, input)).to eq(-1)
  end
end
