require 'spec_helper'
require 'pry'

describe Truck do
  let! (:new_truck) {Truck.new(100, 0)}
  let! (:new_occupant) {Occupant.new("Amy", "Lee")}
  let! (:new_box) {Box.new(new_occupant)}

  it "Is a Truck object" do
    expect(new_truck).to be_a(Truck)
  end

  it "Raises error when full" do
    expect(Truck.new(100, 100).full?).to eq(true)
  end

  it "Adds boxes when not full" do
    expect(new_truck.add_box(new_box)).to eq(1)
  end

  it "Removes boxes when requested" do
    expect(Truck.new(50, 50).remove_box(new_box)).to eq(49)
  end

  it "Removes all boxes for a particular occupant" do
    new_truck.add_box(Box.new(new_occupant))
    new_truck.add_box(Box.new(new_occupant))
    new_truck.add_box(Box.new(new_occupant))
    new_truck.add_box(Box.new(Occupant.new("James", "Hetfield")))

    new_truck.unload_all_occupant(new_occupant)
    new_truck.unload_all_occupant(new_occupant)

    expect(new_truck.current_capacity).to eq(1)
  end
end
