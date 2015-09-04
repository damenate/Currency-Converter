require './currency.rb'


dollar1 = Currency.new(100.00, "USD")
dollar2 = Currency.new(100.00, "USD")

puts dollar1.amount
puts dollar2.type
puts dollar1 == dollar2
