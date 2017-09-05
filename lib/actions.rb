module Actions

  def full?
    if @current_capacity >= @max_capacity
      true
    else
      false
    end
  end
end
