class Appointments

  def initialize
    @slots = []
  end

  def earliest
    @slots.min
  end

  def schedule(appointment)
    @slots << appointment
  end

end

