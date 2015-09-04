class Currency
  attr_accessor :amount, :type

  def initialize(amount,type)
    @amount = amount
    @type = type
  end

  def ==(number)
   @amount ==(number.amount) && @type == (number.type)

end

  def +(number)
    @amount += number.amount
  end

  def -(number)
    @amount -= number.amount
  end
end
