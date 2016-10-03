require "./inversions"

describe "#count_inversions" do
  it "should count the number of inversions in a sequence" do
    # expect(count_inversions([1])).to eq(0)
    # expect(count_inversions([1, 2])).to eq(0)
    # expect(count_inversions([1, 3])).to eq(0)
    # expect(count_inversions([2, 1])).to eq(1)
    # expect(count_inversions([2, 3, 1])).to eq(2)
    expect(count_inversions([4, 3, 2, 1])).to eq(6)
    expect(count_inversions([9, 8, 7, 3, 2, 1])).to eq(15)
  end
end

describe "#merge_sort" do
  it "should sort a sequence" do
    sequence = [1]
    result = {merged_sequence: [1], inversions: 0}
    expect(merge_sort(sequence)).to eq(result)

    sequence = [1, 2]
    result = {merged_sequence: [1, 2], inversions: 0}
    expect(merge_sort(sequence)).to eq(result)

    sequence = [1, 3, 2]
    result = {merged_sequence: [1, 2, 3], inversions: 1}
    expect(merge_sort(sequence)).to eq(result)

    sequence = [3, 1, 2]
    result = {merged_sequence: [1, 2, 3], inversions: 2}
    expect(merge_sort(sequence)).to eq(result)

    sequence = [2, 3, 9, 2, 9]
    result = {merged_sequence: [2, 2, 3, 9, 9], inversions: 2}
    expect(merge_sort(sequence)).to eq(result)

  end
end

describe "#merge" do
  it "should merge 2 sorted arrays into one sorted array" do
    left = {merged_sequence: [1], inversions: 0}
    right = {merged_sequence: [2], inversions: 0}
    expected = {merged_sequence: [1, 2], inversions: 0}
    expect(merge(left, right)).to eq(expected)

    left = {merged_sequence: [2], inversions: 0}
    right = {merged_sequence: [1], inversions: 0}
    expected = {merged_sequence: [1, 2], inversions: 1}
    expect(merge(left, right)).to eq(expected)

    left = {merged_sequence: [1], inversions: 0}
    right = {merged_sequence: [1], inversions: 0}
    expected = {merged_sequence: [1, 1], inversions: 0}
    expect(merge(left, right)).to eq(expected)

    left = {merged_sequence: [1, 2], inversions: 0}
    right = {merged_sequence: [2, 3], inversions: 0}
    expected = {merged_sequence: [1, 2, 2, 3], inversions: 0}
    expect(merge(left, right)).to eq(expected)

    left = {merged_sequence: [1, 3], inversions: 0}
    right = {merged_sequence: [2, 4], inversions: 0}
    expected = {merged_sequence: [1, 2, 3, 4], inversions: 1}
    expect(merge(left, right)).to eq(expected)

    left = {merged_sequence: [1, 4], inversions: 0}
    right = {merged_sequence: [2, 3], inversions: 0}
    expected = {merged_sequence: [1, 2, 3, 4], inversions: 2}
    expect(merge(left, right)).to eq(expected)
  end
end
