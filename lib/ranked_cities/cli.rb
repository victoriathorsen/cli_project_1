module RankedCities
    class CLI

        #Greet the user, run the program

        def run
            system("clear") 
            funny_intro

            Scraper.new.city_scraper 
            greeting
            ask_another_city
             exit_program
        end

        ########### DISPLAY SHIT ##########
        def funny_intro
            puts "\n\n\n\n"
            puts "      If you're already not back living with your parents..." # Loading message before program starts
            puts " \n           We can find you a top city to live in this year..."
            puts " \n                Site disclaimed they did not account for COVID-19..."
            puts "\n"
        end

        def greeting
            puts " ------------------------------------------------------------------------------- "
            puts "                 Welcome to the 50 top ranked U.S. cities in 2019!"
            puts "              Enter a number below to learn more about your selection." 
            puts "                             Or type 'exit' to leave."
            puts " "
            puts " ------------------------------------------------------------------------------- "
            console
            
        end

        def exit_program
            puts "\n"
            puts "            Good you don't need to be visiting anywhere right now anyways."
            puts "                              We in a panny, stay safe"
            puts "\n"
        end

        ####### MORE BACKEND INFO #######

        def console #### i want it to list the names or ask you to input 1-50
            list_cities
            input = gets.chomp.downcase

                if input == 'i'
                    puts "Let's take a look"
                elsif input != 'exit'
                    i = Integer(input , exception: false)
                    if i.between?(1,51)
                        puts i
                        show_city_info(i-1)
                        ask_another_city 
                    end
                else 
                    puts "\n"
                    puts "Not valid. Try again."
                    puts "\n" 
                end
        end

        def list_cities 
            RankedCities::Cities.all.each_with_index do |city, index|
                puts "[#{index+1}]. #{city.name}"
            end
            puts "\n\n"
        end

        def show_city_info(index)
            city = RankedCities::Cities.all[index]
            RankedCities::Scraper.new.city_scraper
            puts "\n\n"    
            puts "                         Coming in at number #{city.number}       "
            puts "                              #{city.name}"
            puts " ------------------------------------------------------------------------------- "
            puts "          It has a population of:               #{city.population}  "
            puts "          It's average salary is:               #{city.salary} "
            puts "          It's quality of life score is:        #{city.qol}    "
            puts "          It's overall value is:                #{city.value} "
            puts "\n"
            puts "Brief description on this city:                      "
            puts "\n    #{city.description}"
            puts "\n\n"
        end

        def ask_another_city
            puts "                   Would you like to see another city? [y/n]"
            input = gets.chomp.downcase
                if input == "y"
                    puts "                     Alright lets travel"
                    puts "\n\n"
                    console
                elsif input == "n"
                    exit_program
                else
                    puts "\n                     Invalid entry. Try again"
                    puts "\n\n"
                end
        end
    end
end