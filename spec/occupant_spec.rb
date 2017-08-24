require 'spec_helper'

describe Occupant do
  let!(:new_occupant) {Occupant.new("Tina", "Fey")}

  it "Is an Occupant object" do
    expect(new_occupant).to be_a(Occupant)
  end

  it "Contains first name" do
    expect(new_occupant.first_name).to eq("Tina")
  end

  it "Contains last name" do
    expect(new_occupant.last_name).to eq("Fey")
  end
end
