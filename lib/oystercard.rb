class Oystercard

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def increase_balance(amount)
    @balance += amount
  end
end