class Truck
  attr_reader :current_load

  def initialize(max_load, current_load)
    @max_load = max_load
    @current_load = current_load
    @box_array = []
  end

  def full?
    if @current_load >= @max_load
      true
    else
      false
    end
  end

  def add_box(box_to_add)
    if self.full?
      raise "Sorry, this truck is full."
    else
      @box_array << box_to_add
      @current_load += 1
      puts "Box added! This truck now has #{@current_load} box(es)."
      @current_load
    end
  end

  def remove_box(box_to_remove)
    @box_array.delete(box_to_remove)
    @current_load -= 1
    @current_load
  end

  def unload_all_occupant(occupant)
    @box_array.each do |box|
      if box.owner == occupant
        @box_array.delete(box)
        @current_load -= 1
      end
    end
  end
end
