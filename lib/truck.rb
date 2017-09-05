class Truck
  include Actions
  attr_reader :current_capacity

  def initialize(max_capacity, current_capacity)
    @max_capacity = max_capacity
    @current_capacity = current_capacity
    @box_array = []
  end

  def add_box(box_to_add)
    if self.full?
      raise "Sorry, this truck is full."
    else
      @box_array << box_to_add
      @current_capacity += 1
      puts "Box added! This truck now has #{@current_capacity} box(es)."
      @current_capacity
    end
  end

  def remove_box(box_to_remove)
    @box_array.delete(box_to_remove)
    @current_capacity -= 1
    @current_capacity
  end

  def unload_all_occupant(occupant)
    @box_array.each do |box|
      if box.owner == occupant
        @box_array.delete(box)
        @current_capacity -= 1
      end
    end
  end
end
