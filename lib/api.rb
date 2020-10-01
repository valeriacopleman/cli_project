require 'pry'
class API

    def self.get_list
        url = "https://www.breakingbadapi.com/api/characters?category=Breaking+Bad"
        uri = URI(url)
        response = Net::HTTP.get(uri)

        list = JSON.parse(response)[0]["name"]
        # use data from list to make all character objects
        #binding.pry
    end

    def self.get_quote(character)
        url = "https://www.breakingbadapi.com/api/quote/random?author=#{character.name.gsub(' ','+')}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        #binding.pry
        quote = JSON.parse(response)[0]["quote"]
        quote 
    end


end
