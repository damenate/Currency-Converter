class CurrencyTrader

attr_accessor :past_rate, :present_rate, :future_rate

def initialize(past_rate, present_rate, future_rate)
  

end








# Hard Mode
# Build a third class called CurrencyTrader. CurrencyTrader should be
# initialized with two CurrencyConverter objects from two different points
#  in time, plus a starting Currency. CurrencyTrader should have a method
#  which returns the best currency investment over that span of time.
# For instance, if you are starting with $1,000,000, assume that you can
# convert your dollars to one currency at the first point in time, but that
# you must then convert it back to dollars at the second point in time.
# The best bet given two CurrencyConverters may be GBP. If USD -> GBP is 1 to 1
# at the first point in time, then 1 to 0.5 at the second point in time, you
# can double your money.
# You should not need to modify Currency or CurrencyConverter to get this
# to work, but if you see a path that involves modifying them and want
# to give it a shot, feel free.
