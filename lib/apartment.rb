class Apartment
  attr_reader :address, :city, :zip, :rent, :lease_start_date, :lease_end_date, :renters

  def initialize(address, city, zip, rent, renters = 0, max_renters = 3)
    @address = address
    @city = city
    @zip = zip
    @rent = rent
    @renters = renters
    @max_renters = max_renters
  end

  def full?
    if @renters >= 3
      true
    else
      false
    end
  end

  def add_roommate
    if self.full?
      raise "Sorry, this apartment is full."
    else
      @renters += 1
      puts "One roommate added! This apartment now has #{@renters} renters."
      @renters
    end
  end

  def remove_roommate
    @renters -= 1
    @renters
  end
end
