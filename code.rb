require './currency.rb'
require './converter.rb'

# dollar1 = Currency.new(10, :USD)
# dollar_type = Currency.new("$10")
# euro1 = Currency.new(25.00, :EUR)
# euro2 = Currency.new(25.00, :EUR)
#
# puts "Your amount #{dollar1.amount} and currency type is #{dollar1.type}"
# 

dollars = Currency.new(100000, :USD)
dollars_symbol = Currency.new("$100")
dollars_error = Currency.new("&100")
euro = Currency.new(100, :EUR)
euro_symbol = Currency.new("€100")
yen = Currency.new(2000, :JPY)
yen_symbol = Currency.new("¥2000")
uk = Currency.new(100, :GBP)
uk_symbol = Currency.new("£100")

puts "*******Test Currency Converter for 1 USD*******"
p currency_exchange.convert(Currency.new("$1"), :USD) == Currency.new(1, :USD)
puts ""

puts "*******Convert Any to Any*******"
p currency_exchange.convert(dollars, :EUR).amount.round(2)
puts ""







#####Testing Currency for first section of HomeWork.#######
# puts dollar1.amount
# puts dollar2.type
# puts dollar1 == dollar2
#
# add_dollar = dollar1+dollar2
# sub_dollar = dollar1-dollar2
#
# puts add_dollar.amount
# puts sub_dollar.amount
#
# add_euro = euro1+euro2
# sub_euro = euro1-euro2
#
# puts add_euro.amount
# puts sub_euro.amount
#
# multi_dollar = dollar1 * 5
#
# puts multi_dollar.amount
