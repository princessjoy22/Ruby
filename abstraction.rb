class Savings
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance >= amount
      @balance -= amount
      true
    else
      false
    end
  end
end

savings_account = Savings.new(1000)
savings_account.deposit(500)
puts "Withdrawal successful: #{savings_account.withdraw(1600)}"
puts "Balance: #{savings_account.balance}"