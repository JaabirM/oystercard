class Oystercard
  MAX_BALANCE = 90

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def increase_balance(amount)
    fail "max balance of #{MAX_BALANCE} was exceeded" if @balance + amount > MAX_BALANCE
    @balance += amount
  end

  def decrease_balance(amount)
    @balance -= amount
  end
end