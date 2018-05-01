
class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @discount = discount 
    @total = 0 
    @items = []
  end
  
  def add_item(item, cost, quantity = 1)
    quantity.times do 
      @items << item
    end
    @total += cost * quantity
  end
  
  def apply_discount
    if @discount > 0
      discounted_price = @total - (@total * (@discount.to_f / 100))
      @total = discounted_price.to_i 
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."  
    end
  end
  
  def void_last_transaction
    @total = 0.0
  end
  
  
end
