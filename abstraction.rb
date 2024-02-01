class SavingsAccount
  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end


  def calculate_interest
    puts "Calculating interest..."
    interest = calculate_interest_amount
    @balance += interest
    interest
  end

  private

  def calculate_interest_amount
    puts "Calculating interest amount..."
    @balance * interest_rate
  end

  protected

  def interest_rate
    0.01
  end
end


savings_account = SavingsAccount.new(1000)
puts "Savings balance before interest: #{savings_account.balance}"
savings_account.calculate_interest
puts "Savings balance after interest: #{savings_account.balance}"
