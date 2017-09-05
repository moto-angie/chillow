class Apartment
  include Actions
  attr_reader :address, :city, :zip, :rent, :lease_start_date, :lease_end_date, :current_capacity

  def initialize(address, city, zip, rent, current_capacity = 0, max_capacity = 3)
    @address = address
    @city = city
    @zip = zip
    @rent = rent
    @current_capacity = current_capacity
    @max_capacity = max_capacity
    @roommates = []
  end

  def add_roommate(occupant)
    if self.full?
      raise "Sorry, this apartment is full."
    else
      @current_capacity += 1
      @roommates << occupant
      puts "One roommate added! This apartment now has #{@current_capacity} renters."
      @current_capacity
    end
  end

  def remove_roommate(occupant)
    @current_capacity -= 1
    @roommates.delete(occupant)
    @current_capacity
  end
end
