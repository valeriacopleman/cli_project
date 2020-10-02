class API

    def self.get_list
        url = "https://www.breakingbadapi.com/api/characters?category=Breaking+Bad"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        characters = JSON.parse(response)
        #binding.pry
        characters.each do |char|
          Character.new(name: char["name"]) 
        end
    end

    def self.get_quote(character)
        url = "https://www.breakingbadapi.com/api/quote/random?author=#{character.name.gsub('á','a')}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        quote = JSON.parse(response)
    end

end

