class CLI

    def starter

        API.get_list

        puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "      Welcome to The Breaking Bad Lines!"
        puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Characters:"
        print_list
        puts " "
        puts "Enter the number of your favorite Breaking Bad character to get a famous quote, or 'Exit' to exit the program: "
        puts " "
        input = gets.strip.downcase 
        puts ""
        while input != 'exit' do
            if input.to_i > 0 && input.to_i <= Character.all.count
                chara_name = Character.all.at(input.to_i - 1)
                quote = API.get_quote(chara_name)
                if quote.empty? 
                    puts "~~Oops, I'm sorry. Looks like that character had no memorable quotes. Try again.~~"
                else 
                    puts "\"#{quote}\""
                end
                    puts ""
                    puts "#{chara_name.name}"
                    puts "Nickname: #{chara_name.nickname}"
                    puts "Status: #{chara_name.status}"
            elsif input == 'list'
                print_list
            else
                puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
                puts "~~ERROR: Invalid response. Please try again.~~"
                puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            end
                puts ""
                puts "Enter the number of your favorite Breaking Bad character to get more lines or 'Exit' to exit the program: "
                puts "To get the list again enter 'List'"
                puts ""
                input = gets.strip.downcase
                puts ""
        end
            puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts "      Thank you for using The Breaking Bad Lines!"
            puts "                      Goodbye!"
            puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end

    def print_list
        Character.all.each.with_index(1) do |character , number|
            puts "#{number}. #{character.name}"
        end
    end

end 



