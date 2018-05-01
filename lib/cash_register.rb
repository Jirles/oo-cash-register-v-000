class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @discount = discount / 100 
    @total = 0 
  end
  
  def add_item(item, cost)
    @total += cost 
  end
  
  
end
