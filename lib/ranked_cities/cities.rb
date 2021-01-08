

module RankedCities
    class Cities
        
        attr_accessor :number, :name, :description, :population, :salary, :qol, :value

        @@all = []

        def initialize (number, name, description, population, salary, qol, value)
            @number = number
            @name = name
            @description = description
            @population =  population
            @salary = salary
            @qol = qol
            @value = value
            @@all << self
        end

        def self.all
            @@all
        end
    end
end