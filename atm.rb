class BankAccount
  attr_reader :name, :balance

  def initialize(name)
    @name = name
    @transactions = []
    @balance = 0.0
  end

  def withdraw(amount)
    @balance -= amount.to_f
    puts "$%.2f successfully withdrawn.\n" % amount
  end

  def deposit(amount)
    @balance += amount.to_f
    puts "$%.2f successfully deposited.\n" % amount
  end
end

cmd = ""
account = BankAccount.new("James G")

puts "***Welcome to #{account.name}'s ATM***\n\n"

while cmd != "e" do
  puts "Would you like to (w)ithdraw, (d)eposit or (c)heck your balance?"
  puts "You can also (e)nd your session."
  cmd = gets.chomp

  case cmd
  when "w"
    puts "How much would you like to withdraw?"
    amount = gets.chomp # expect this to be a float

    # handle incorrect input somehow, either here or
    # preferably in the BankAccount#withdraw method
    account.withdraw(amount)
  when "d"
    puts "How much would you like to deposit?"
    amount = gets.chomp # expect this to be a float

    # handle incorrect input somehow, either here or
    # preferably in the BankAccount#deposit method
    account.deposit(amount)
  when "c"
    puts "Your balance is $%.2f\n" % account.balance
  else
    # didn't understand the command
    puts "Didn't understand your command. Try again." unless cmd == "e"
  end
end
