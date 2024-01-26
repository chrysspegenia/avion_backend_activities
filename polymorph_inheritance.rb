#Create objects that implements Polymorphism by inheritance

class Plant
    def watering_method
        puts "Specify the plant to ensure proper watering method."
    end
end

class Flower < Plant
    def watering_method
        puts "I love it when you water me everyday."
    end
end

class Cactus < Plant
    def watering_method
        puts "I'd prefer it if you drench me with water one or twice a month."
    end
end

class Succulent < Plant
    def watering_method
        puts "You should only water me one or twice a month on sunny days."
    end
end

def make_waterable(plant_type)
    plant_type.watering_method
end


roses = Flower.new
golden_barrel = Cactus.new
aloe_vera = Succulent.new

make_waterable(roses)
make_waterable(golden_barrel)
make_waterable(aloe_vera)
