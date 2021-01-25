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

        def self.find_city_by_number(number)
            Cities.all.find {|city| city.number == number}
        end
    end
end



# def initialize(attributes=nil)
#     if attributes
#       attributes.each do |k,v|
#         self.send("#{k}=", v)
#       end
#     end
#     @@all << self
# end