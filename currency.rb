class CurrencyTypeError < StandardError
end

class Currency
  attr_accessor :amount, :type

  def initialize(amount, type = nil)
    type_hash = Hash.new()
    type_hash = {"$" => :USD, "€" => :EUR, "¥" => :JPY}

    if type
      @type = type.to_sym
      @amount = amount
    else
      @type = type_hash[amount[0]]
      @amount = amount[1..-1].to_f
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
