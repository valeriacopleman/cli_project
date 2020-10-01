class CLI

    def starter

        API.get_list

        puts ""
        puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "      Welcome to The Breaking Bad Lines!"
        puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
        print_list
        puts ""
        puts "Enter the number of your favorite Breaking Bad character to get some lines or 'Exit' to exit the program: "
        puts ""
        input = gets.strip.downcase 
        #binding.pry
        while input != 'exit' do
            if input.to_i > 0 && input.to_i <= print_list.count
                puts ""
                character = Character.all.at(input.to_i - 1) 
                quote = API.get_quote(character)
                puts quote
               #get number and matching name to get 
            else
                puts "~~Oops! Invalid response. Please try again.~~"
            end
            puts ""
            puts "Enter the number of your favorite Breaking Bad character to get some lines or 'Exit' to exit the program: "
            puts ""
            input = gets.strip.downcase
        end
        puts ""
        puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "      Thank you for using The Breaking Bad Lines!"
        puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
    end

    def print_list
        Character.all.each.with_index(1) do |c , i|
            puts "#{i}. #{c.name}"
        end
    end

    #def print_quote(quote)

    #end

        # get that character from character.all 
        #call API.get_quote(character) from the line above
        #print quote
        #q = API.get_quote(Character.new(name: "Jesse Pinkman"))
        #binding.pry
        #puts q 



    

end

