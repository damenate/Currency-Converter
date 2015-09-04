class Currency
  attr_accessor :amount, :type

  def initialize(amount,type)
    @amount = amount
    @type = type
  end

  def ==(number)
    @amount ==(number.amount) && @type == (number.type)
    true
  end

  def +(number)
    if @type == number.type
      Currency.new(number.amount + @amount,@type)
    else
     raise CurrencyTypeError,"Using two different currency types, don't do that."
    end
  end

  def -(number)
    if @type == number.type
      Currency.new(number.amount - @amount,@type)
    else
      raise CurrencyTypeError,"Using two different currency types, don't do that."
    end
  end
end
