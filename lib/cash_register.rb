class CashRegister
  
  attr_accessor :total, :discount, :all_items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @all_items = []
    @last_transaction = 0
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do
      @all_items << title
    end
    last_transaction = (price * quantity)
    @total += last_transaction
  end
  
  def apply_discount
    if self.discount == 0
       "There is no discount to apply."
    else
      @total = self.total * (1-(self.discount/100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @all_items
  end

end