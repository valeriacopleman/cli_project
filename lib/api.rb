class API

    def self.get_list
        #binding.pry
        url = "https://www.breakingbadapi.com/api/characters?category=Breaking+Bad"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        #binding.pry
        characters = JSON.parse(response)
        # use data from list to make all character objects
        characters.each do |char|
          Character.new(name: char["name"]) 
        end
    end


    def self.get_quote(character)
        #binding.pry
        url = "https://www.breakingbadapi.com/api/quote/random?author=#{character.name.gsub(' ','+')}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        #binding.pry
        quote = JSON.parse(response)
        #quote
    end


end
