require "./points_and_segments"

describe "#count_points_coverage" do
  it "should count number of segments covering each points" do
    segments = [[0, 0]]
    points = [0]
    expect(count_points_coverage(segments, points)).to eq([1])

    segments = [[0, 0], [1, 2]]
    points = [0, 1]
    expect(count_points_coverage(segments, points)).to eq([1, 1])
  end

  it "should pass sample input" do
    segments = [[0, 5], [7, 10]]
    points = [1, 6, 11]
    expect(count_points_coverage(segments, points)).to eq([1, 0, 0])

    segments = [[-10, 10]]
    points = [-100, 100, 0]
    expect(count_points_coverage(segments, points)).to eq([0, 0, 1])

    segments = [[0, 5], [-3, 2], [7, 10]]
    points = [1, 6]
    expect(count_points_coverage(segments, points)).to eq([2, 0])
  end

  it "should complete within 15 seconds for large input" do
    segments = []
    points = []
    (1..50000).each do |i|
      segments.push([rand(-10000000..100000000), rand(-10000000..10000000)])
      points.push(rand(-100000000..100000000))
    end

    expect(count_points_coverage(segments, points)).to eq([1, 0])
  end
end
