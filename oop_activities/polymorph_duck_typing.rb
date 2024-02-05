#Create objects that implements Polymorphism by Duck typing


class Watering_manager
    def water_plant(plant_type)
        plant_type.watering_method
    end
end

class Flower
    def watering_method
        puts "I love it when you water me everyday."
    end
end

class Cactus
    def watering_method
        puts "I'd prefer it if you drench me with water one or twice a month."
    end
end

class Succulent
    def watering_method
        puts "You should only water me one or twice a month on sunny days."
    end
end

watering_manager = Watering_manager.new

rose = Flower.new
watering_manager.water_plant(rose)

golden_barrel = Cactus.new
watering_manager.water_plant(golden_barrel)

aloe_vera = Succulent.new
watering_manager.water_plant(aloe_vera)
