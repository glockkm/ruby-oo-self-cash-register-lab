
class CashRegister
  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount=nil, total=0, items=[])
    @total = total
    @discount = discount
    @items = items
  end

  def add_item(title, price, quantity=1)
    self.last_item = price * quantity
    self.total += (price * quantity)
    quantity.times { @items.push(title) }
  end

  def apply_discount
    if @discount
      perc_discount = self.discount / 100.0
      self.total = self.total - (self.total * perc_discount).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    void_item = @items.pop(1)
    self.total -= self.last_item
  end

end



# class CashRegister
#     attr_accessor :total, :discount, :quantity, :price
  
#     def initialize(discount = 0)
#       @total = 0
#       @discount = discount
#       @price = price
#       @quantity = quantity
#       @items = [] # empty array at first
#       @transactions = [] # empty at first
#     end
#     # sets an instance variable @total on initialization to zero
#     # optionally takes an employee discount on initialization
  
#     def add_item(title, price, quantity = 1)
#       @total += price * quantity 
#       @transactions << price # push price into transactions array
#       i = quantity
#       until i == 0 do
#         @items << title # push title into items array until quantity is 0
#         i -= 1
#       end
#     end
#     #  accepts a title and a price and increases the total
#     # also accepts an optional quantity
#     # doesn't forget about the previous total
  
#     def apply_discount
#       if @discount == 0
#         "There is no discount to apply."
#       else
#         self.total -=  @total * @discount / 100 #(0.01 * @discount * @total).to_i
#         "After the discount, the total comes to $#{self.total}."
#       end
#     end
#     #  the cash register was initialized with a discount
#     # applies the discount to the total price
#     # returns success message with updated total
#     # reduces the total
#     # the cash register was not initialized with a discount
#     # returns a string error message that there is no discount to apply
  
#     def items
#       @items
#     end
  
#     def void_last_transaction
#         remove_item = @transaction.pop#@price.pop
#         @total -= remove_item #* @price
#     #   self.total = @total - @transactions.pop # pops last transaction out of array 
#     #   self.total -= price * quantity 
#     #   self.total
#     end
# end
  #  subtracts the last item from the total



#   class CashRegister
#     attr_accessor :total, :discount, :price, :items
  
#     def initialize(discount = 0)
#       @total = 0
#       @discount = discount
#       @items = []
#     end
  
#     def add_item(item, price, quantity = 1)
#       @price = price
#       @total += price * quantity
#       if quantity > 1
#         counter = 0
#         while counter < quantity
#           @items << item
#           counter += 1
#         end
#       else
#         @items << item
#       end
#     end
  
#     def apply_discount
#       if @discount > 0
#         @to_take_off = (price * discount)/100
#         @total -= @to_take_off
#         return "After the discount, the total comes to $#{total}."
#       else
#         return "There is no discount to apply."
#       end
#     end
