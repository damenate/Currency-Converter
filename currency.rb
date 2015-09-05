class CurrencyTypeError < StandardError
end

class Currency
  attr_accessor :amount, :type

  def initialize(amount,type)
    @amount = amount
    @type = type
  end

  def symbol(value, type)
    if type[0] == "$"
      type = "USD"
      amount = value[1..-1]
      amount = amount.to_f
    else type[0] == "€"
      type = "EUR"
      amount = value[1..-1]
      amount = amount.to_f
    end
  end

  def ==(number)
    @amount ==(number.amount) && @type == (number.type)
    true
  end

  def +(number)
    if @type == number.type
      Currency.new(number.amount + @amount,@type)
    else
     raise CurrencyTypeError,"STOP using two different currency types."
    end
  end

  def -(number)
    if @type == number.type
      Currency.new(number.amount - @amount,@type)
    else
      raise CurrencyTypeError,"STOP using two different currency types."
    end
  end

  def *(times)
      Currency.new(@amount * times,@type)
  end
end
