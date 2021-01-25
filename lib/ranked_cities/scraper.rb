require 'nokogiri'
require 'open-uri'
    
module RankedCities
    class Scraper   
    
        def city_scraper
            site = "https://www.businessinsider.com/us-news-best-places-to-live-in-america-2016-3"
            page = Nokogiri::HTML(URI.open(site))

            page.css('div.slideshow-slide-container div.slide').each do |city|
                number = city.css('h2.slide-title-text').text.split(' ').first
                name = city.css('h2.slide-title-text').text.split(' ')[1..-1].join(' ')
                description = city.css('p')[0..1].text
                population = city.css('p')[2].text
                salary = city.css('p')[3].text
                qol = city.css('p')[4].text
                value = city.css('p')[5].text

                city = Cities.new(number, name, description, population, salary, qol, value)
            end
        end
    end
end





