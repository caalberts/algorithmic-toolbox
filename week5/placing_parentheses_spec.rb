require './placing_parentheses'

describe '#parentheses' do
  it "should maximize the value of expressions" do
    expect(parentheses("1+1")).to eq(2)
  end

  it "should pass sample test" do
    expect(parentheses("1+5")).to eq(6)
    expect(parentheses("5-8+7*4-8+9")).to eq(200)
  end
end
