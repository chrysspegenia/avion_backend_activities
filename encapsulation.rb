# create an object that inplements encapsulation


class AnimalDescription
    def initialize(animal_name, animal_description)
        @animal_name = animal_name
        @animal_description = animal_description
    end

    def merge_description
        "The #@animal_name is #@animal_description. #{bonus_description}"
    end

    private 

    def bonus_description
        "That animal is quite unique."
    end
end

puppy_cute = AnimalDescription.new("puppy", "cute")

puts puppy_cute.merge_description