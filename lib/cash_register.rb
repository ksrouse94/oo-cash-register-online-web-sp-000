class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @total += price*quantity
    @last_transaction = @total
    
    
  end  
  
  def apply_discount
    #applying discounts --> turn discount into decimal value --> multiply the total and discount to determine the amount to be removed --> subtract the amount to be removed from the current total 
    if @discount != 0 
      discount = (100-@discount)/100.0
      @total = @total*discount
      return "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end  
    
  end
  
  def items
    self.add_item(@item, @price, @quantity)
    
    if @quantity == 1
      @@items << @item
    else 
      @@items.fill(@item, @@items.size, @quantity)
    end  
    
    @@items
  end  
end  