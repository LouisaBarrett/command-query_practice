class Kid

  def initialize
    @grams_candy = 0
    @hyper = false
  end

  def grams_of_sugar_eaten
    @grams_candy
  end

  def eat_candy
    @grams_candy += 5
  end

  def hyperactive?
    eat_candy > 60
  end

end
