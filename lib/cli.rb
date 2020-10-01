class CLI

    def starter

        API.get_list

        puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "      Welcome to The Breaking Bad Lines!"
        puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
        print_list
        puts ""
        puts "Enter the number of your favorite Breaking Bad character to get some lines or 'Exit' to exit the program: "
        input = gets.strip.downcase 
        while input != 'exit' do
            if input.to_i > 0 && input.to_i <= print_list.count
                puts "" 
                API.get_quote(Character.all.at(input.to_i - 1)) 
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

end

