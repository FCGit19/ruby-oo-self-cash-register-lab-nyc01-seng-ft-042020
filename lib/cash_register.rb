
class CashRegister
    attr_accessor :total
    def initialize(d=0)
      @total = 0
      @discount = d
      @array = []
    end 

    def discount 
      @discount 
    end 

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times do|i|
            @array << {:title => title, :price=> price, :quantity => quantity}
        end 
    end

    def apply_discount
        @total -= @total * (@discount / 100.0)
        if discount != 0
        "After the discount, the total comes to $#{@total.to_i}."

        else 
        "There is no discount to apply."

        end
    end 

    def items
        @array.map do |hash|
            hash[:title]
        end
    end 

    def void_last_transaction
        
      

        @total -= @array[@array.length-1][:price] * @array[@array.length-1][:quantity]



    end 

end 

cash_register = CashRegister.new(20)

