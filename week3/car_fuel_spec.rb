require "./car_fuel"

describe "#min_refills" do
  it "should calculate minimum number of refills" do
    expect(min_refills([0, 100, 200, 300], 500)).to be(0)
  end
end
