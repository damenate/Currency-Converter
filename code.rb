require './currency.rb'
require './converter.rb'
require './currency_trader.rb'


exchange_booth = CurrencyConverter.new({USD: 1.00, EUR: 0.89, JPY: 118.95})

dollars = Currency.new(100, :USD)
dollars_symbol = Currency.new("$100")
dollars_error = Currency.new("%100")
euros = Currency.new(125, :EUR)
euro_symbol = Currency.new("€100")
yen = Currency.new(200, :JPY)
yen_symbol = Currency.new("¥2000")

#dollars = Currency.new(10, :USD)
#dollars_type = Currency.new("$10")
#euro = Currency.new(25.00, :EUR)

puts euro_symbol.type

puts "#{dollars_symbol.amount} #{dollars.type}"

puts "Your amount #{dollars.amount} and currency type is #{dollars.type}"


puts "Testing $10 US dollars"
puts exchange_booth.convert(Currency.new("$10"), :USD) == Currency.new(10, :USD)

add_dollar = dollars+dollars
puts "#{add_dollar.amount}"

puts "Test the conversion of currency types."
cdy = exchange_booth.convert(dollars, :JPY).amount
puts "%.2f" %cdy
cey = exchange_booth.convert(euros, :JPY).amount
puts "%.2f" %cey
# puts dollars_error + dollars

old_value = CurrencyConverter.new({USD: 1, EUR: 0.767, GBP: 0.642, AUD: 1.353, CAD: 1.355, JPY: 102.162})
present_value = CurrencyConverter.new({USD: 1, EUR: 0.898, GBP: 0.656, AUD: 1.433, CAD: 1.322, JPY:119.863})

hash_array = [old_value, present_value]
#trader = Currency_Trader.new(old_value, present_value, :USD)
#trader.find_best_investment

trader = CurrencyTrader.new(hash_array, :USD)
#trader.output
trader.find_best_investment

#####Testing Currency for first section of HomeWork.#######
# puts dollars.amount
# puts dollars_type.type
# puts dollars == dollars
#
# sub_dollar = dollars-dollars
#
# puts add_dollars.amount
# puts sub_dollars.amount
#
# add_euro = euro+euro
# sub_euro = euro-euro
#
# puts add_euro.amount
# puts sub_euro.amount
#
# multi_dollars = dollars * 5
# puts multi_dollars.amount
