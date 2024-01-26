#Create a code that implements abstraction

class Purchase_cactus
    def initialize(quantity, price, variegated=false, selected_breed=false)
        @quantity = quantity
        @price = price
        @variegated = variegated
        @selected_breed = selected_breed
    end

    def total_transaction
        total_price - get_discount
    end

    private

    #the total_price method is being abstracted using the private method to keep it only within the Purchase_cactus class
    def total_price
        base_price = @quantity * @price
        variegated_price = @variegated ? @quantity * 500 : 0
        selected_breed_price = @selected_breed ? @quantity * @price * 10 : 0
    
        base_price + variegated_price + selected_breed_price
    end
    
    # def get_variegated_price
    #     variegated_price = @variegated ? @quantity * 500 : 0
    # end

    # def get_selected_breed_price
    #     selected_breed_price = @selected_breed ? @quantity * (@price * 10) : 0
    # end

    # def total_price
    #     base_price = @quantity * @price
    #     base_price + get_variegated_price + get_selected_breed_price
    # end

    def get_discount
        discount_price = (@quantity / 5).to_i * 100
    end
end

cactus = Purchase_cactus.new(1, 100)
puts "Golden Barrel Price: #{cactus.total_transaction}"

cactus = Purchase_cactus.new(5, 100)
puts "Golden Barrel x 5 Price: #{cactus.total_transaction}"

cactus = Purchase_cactus.new(10, 100)
puts "Golden Barrel x 10 Price: #{cactus.total_transaction}"

cactus_var = Purchase_cactus.new(1, 100, true)
puts "Golden Barrel Var Price: #{cactus_var.total_transaction}"

cactus_selected = Purchase_cactus.new(1, 200, false, true)
puts "Golden Barrel Selected Price: #{cactus_selected.total_transaction}"

cactus_selected = Purchase_cactus.new(1, 100, true, true)
puts "Golden Barrel Var and Selected Price: #{cactus_selected.total_transaction}"