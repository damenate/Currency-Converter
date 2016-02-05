
class CurrencyTrader

  def initialize(rate_collection, start_currency)
    @rate_collection = rate_collection
    @start_currency = start_currency
  end

  def find_best_investment
    max_value = 0
    total_gain = 0
    type = "default"

    (0..@rate_collection.length-2).each do |i|
      past_hash = @rate_collection[i].exchange_rates
      present_hash = @rate_collection[i+1].exchange_rates
      key_arr = past_hash.keys
      key_arr.each_index do |x|
        gain = past_hash[key_arr[x]] / present_hash[key_arr[x]]
        if gain > max_value
          max_value = gain
          type = key_arr[x]
        end
      end
      #  puts "#{past_hash[x]} ==>> #{i.exchange_rates[cur]}" #if @exchange_rates_collection[i+1].exchange_rates[cur] != nil
    end
    puts "The best investment is #{type.to_s} with a return of #{(max_value * 100).round(2)}%"
  end
  # key_arr = @rate_collection[0].exchange_rates.keys
  #   (0..@rate_collection[0].exchange_rates.length-1).each do |x|
  #     (0..@rate_collection[0].exchange_rates.length-1).each do |y|
  #     (0..@rate_collection.length-2).each do |i|
  #       old_hash = @rate_collection[i].exchange_rates
  #       new_hash = @rate_collection[i+1].exchange_rates
  #       gain = new_hash[key_arr[y]] / old_hash[key_arr[x]]
  #
  #     end
  #   end
  # end
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
