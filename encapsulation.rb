# create an object that inplements encapsulation


class AnimalDescription
    def initialize(animal_name, animal_description)
        @animal_name = animal_name
        @animal_description = animal_description
    end

    def merge_description
        "#@animal_name #@animal_description"
    end
end

puppy_cute = AnimalDescription.new("puppy", "cute")

puts puppy_cute.merge_description