class CLI

    def starter
        API.get_list
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Welcome to The Breaking Bad Lines!"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
        puts "AMC's Breaking Bad is among the top shows ever created."
        puts ""
        puts "Would you like to find some of the famous quotes from the characters?"
        puts "Enter 'Yes' to find some quotes or 'Exit' to leave the program: "
        puts ""
        @input = gets.strip.downcase 
        puts ""

    
        # print out a numbered list of all character names from Character.all
        puts "Enter the number of your favorite Breaking Bad character from the list to get some of your favorite lines: "
        puts ""
        # get that character from character.all 
        #call API.get_quote(character) from the line above
        #print quote
        #q = API.get_quote(Character.new(name: "Jesse Pinkman"))
        #binding.pry
        #puts q 
        #@character.gets.strip.downcase

    


        

        

    end

end

