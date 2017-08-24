class House
  attr_reader :address, :city, :zip, :price
  def initialize(address, city, zip, price)
    @address = address
    @city = city
    @zip = zip
    @price = price
  end
end
