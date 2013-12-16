class Adult

  def initialize
    @sober = true
    @drink = 0
  end

  def sober?
    @sober
  end

  def consume_an_alcoholic_beverage
    @drink += 1
    if @drink >= 3
      @sober = false
    end
  end

end
