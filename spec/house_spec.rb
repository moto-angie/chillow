require 'spec_helper'

describe House do
  let!(:new_house) {House.new("1234 Main St.", "Portland", "97205", 399000)}

  it "Is a House object" do
    expect(new_house).to be_a(House)
  end

  it "Has an address" do
    expect(new_house.address).to eq("1234 Main St.")
  end

  it "Has a city" do
    expect(new_house.city).to eq("Portland")
  end

  it "Has a zip code" do
    expect(new_house.zip).to eq("97205")
  end

  it "Has a price" do
    expect(new_house.price).to eq(399000)
  end
end
