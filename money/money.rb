class Money

  def initialize
    @earn = 0
  end

  def amount
    @earn
  end

  def earn(paycheck)
    @earn += paycheck
  end

  def pay(bills)
    @earn -= bills
  end
end
