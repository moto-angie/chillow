require 'spec_helper'

describe Dwelling do
  let!(:new_dwelling) {Dwelling.new("6225 Holly Hill Rd.", "Sherwood", "OR", "97140")}

  it "Is a Dwelling object" do
    expect(new_dwelling).to be_a(Dwelling)
  end

  it "Has an address" do
    expect(new_dwelling.address).to eq("6225 Holly Hill Rd.")
  end

  it "Has a city" do
    expect(new_dwelling.city).to eq("Sherwood")
  end

  it "Has a state" do
    expect(new_dwelling.state).to eq("OR")
  end

  it "Has a zip code" do
    expect(new_dwelling.zip).to eq("97140")
  end
end
