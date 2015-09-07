require './currency.rb'
require './converter.rb'


exchange_booth = CurrencyConverter.new()

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
puts "#{dollars_symbol.amount} #{dollars.type}"

puts "Your amount #{dollars.amount} and currency type is #{dollars.type}"


puts "Testing $10 US dollars"
puts exchange_booth.convert(Currency.new("$10"), :USD) == Currency.new(10, :USD)


puts "Test the conversion of currency types."
cdy = exchange_booth.convert(dollars, :JPY).amount
puts "%.2f" %cdy
cey = exchange_booth.convert(euros, :JPY).amount
puts "%.2f" %cey

#####Testing Currency for first section of HomeWork.#######
# puts dollars.amount
# puts dollars_type.type
# puts dollars == dollars
#
# add_dollar = dollars+dollars
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
