class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total += price*quantity
  end  
  
  def apply_discount
    #applying discounts --> turn discount into decimal value --> multiply the total and discount to determine the amount to be removed --> subtract the amount to be removed from the current total 
    
    if @discount != 0 
      discount = (100-@discount)/100.0
      @total = @total*discount
      return "After the discount, the total comes to $#{@total.to_i}."
    end  
    
  end
end  