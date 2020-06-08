require 'pry'

class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    @total -= @total * (@discount / 100.0)
    if @total % 1 == 0 
      @total = @total.to_i
   "After the discount, the total comes to $#{@total}."
  end
end
