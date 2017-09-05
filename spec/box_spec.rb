require 'spec_helper'

describe Box do
  let! (:new_box) {Box.new(Occupant.new("Katie", "Brown"))}

  it "Is a Box object" do
    expect(new_box).to be_a(Box)
  end
end
