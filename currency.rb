class CurrencyTypeError < StandardError
end

class Currency
  attr_accessor :amount, :type

  def initialize(amount,type)
    @amount = amount
    @type = type
  end

  def type_hash
    type_hash = {"$" => :USD, "€" => :EUR}
    if amount
      @type = type.to_sym
      @amount = amount
    else
      @type = type_hash[type[0]]
      @amount = type[1..-1].to_f
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
