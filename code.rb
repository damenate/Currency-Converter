require './currency.rb'
require './error.rb'

dollar1 = Currency.new(100.00, "USD")
dollar2 = Currency.new(100.00, "USD")
euro1 = Currency.new(25.00, "EUR")
euro2 = Currency.new(25.00, "EUR")
#
puts dollar1.amount
puts dollar2.type
puts dollar1 == dollar2

add_dollar = dollar1+dollar2
sub_dollar = dollar1-dollar2

puts add_dollar.amount
puts sub_dollar.amount

add_euro = euro1+euro2
sub_euro = euro1-euro2

puts add_euro.amount
puts sub_euro.amount

multi_dollar = dollar1 * 5

puts multi_dollar.amount
