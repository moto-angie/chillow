require 'spec_helper'

describe Apartment do
  let!(:new_apartment) {Apartment.new("430 Maple Ln.", "Amity", "97101", 1400)}

  it "Is an Apartment object" do
    expect(new_apartment).to be_a(Apartment)
  end

  it "Has an address" do
    expect(new_apartment.address).to eq("430 Maple Ln.")
  end

  it "Has a city" do
    expect(new_apartment.city).to eq("Amity")
  end

  it "Has a zip code" do
    expect(new_apartment.zip).to eq("97101")
  end

  it "Has a rent price" do
    expect(new_apartment.rent).to eq(1400)
  end

  it "Raises an exception when full" do
    expect(Apartment.new("430 Maple Ln.", "Amity", "97101", 1400, 3).full?).to eq(true)
  end

  it "Adds a new roommate when not full" do
    expect(new_apartment.add_roommate).to eq(1)
  end

  it "Removes roommates" do
    expect(Apartment.new("430 Maple Ln.", "Amity", "97101", 1400, 3).remove_roommate).to eq(2)
  end
end
