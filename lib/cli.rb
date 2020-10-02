class CLI

    def starter

        API.get_list

        puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "      Welcome to The Breaking Bad Lines!"
        puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        print_list
        puts " "
        puts "Enter the number of your favorite Breaking Bad character to get some lines or 'Exit' to exit the program: "
        puts " "
        @input = gets.strip.downcase 

        while @input != 'exit' do
            if @input.to_i > 0 && @input.to_i <= 57
                puts " "
                API.get_quote(Character.all.at(@input.to_i - 1))
                puts " "
            else
                puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
                puts "~~Oops! Invalid response. Please try again.~~"
            end
                puts "Enter the number of your favorite Breaking Bad character to get some lines or 'Exit' to exit the program: "
                puts " "
                @input = gets.strip.downcase
        end
            puts ""
            puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts "      Thank you for using The Breaking Bad Lines!"
            puts "                      Goodbye!"
            puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts ""
    end
end

    def print_list
        Character.all.each.with_index(1) do |c , i|
            puts "#{i}. #{c.name}"
        end
    end

    #make a prompt and figure why it is not in order
    #def print_quote
     #   API.get_quote(Character.all.at(@input.to_i - 1))
     #   @quote.each do |q|
     #       puts q["quote"]
     #   end
        #API.get_quote(Character.all.at(@input.to_i - 1))
    #end



