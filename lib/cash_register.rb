require "pry"

class CashRegister

    attr_accessor :total, :title, :price, :items, :last_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @title = @title
        @price = price
        @items = []
        @last_item = 0
    end

    def discount
        @discount
    end

    def add_item(title, total, quantity=1)
        @total += total * quantity
        quantity.times do
            self.items << title
        end
        @last_item = quantity * total
        #binding.pry
    end

    def apply_discount
        if discount != 0
            self.total -= @total * discount/100
            "After the discount, the total comes to $#{total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total = @total - @last_item
    end
end
#binding.pry
cart = CashRegister.new()
cart.add_item("apple", 0.87,3)

cart = CashRegister.new()
puts cart.total = 5