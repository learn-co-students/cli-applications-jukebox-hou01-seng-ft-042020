# Add your code here

# def prompt_user_name
#     puts "Enter your name:"
# end

# def gets_user_name
#     user_name = gets.strip
#     return user_name
# end
    
# def say_hello(name)
#     puts "Hi #{name}"
# end


# def run_jukebox
#     prompt_user_name
#     user_name = gets_user_name
#     say_hello(user_name)

# end

# run_jukebox


def get_command_input
    #gets command # from user
    gets.strip
end

def help
    #displays the full list of commands

    $stdout.puts "I accept the following commands:"
    $stdout.puts "- help : displays this help message"
    $stdout.puts "- list : displays a list of songs you can play"
    $stdout.puts "- play : lets you choose a song to play"
    $stdout.puts "- exit : exits this program"
end

def list(songs)
    #displays a list of songs you can play
    # num = 1
    # songs.each do |count|
    #     puts "#{num}. #{songs[count]}"
    #     num +=1
    # end
    songs.each_with_index do |item, index|
        $stdout.puts "#{index+1}. #{item}"
    end
end

def play(songs)
    #lets you choose a song to play
    found = "no"

    $stdout.puts "Please enter a song name or number:"
    user_input = gets.strip

    songs.each_with_index do |item, index|
        index_n = index + 1
        if user_input == index_n.to_s
            found = "yes"
            puts "Playing #{item}"
        elsif user_input == item
            found = "yes"
            puts "Playing #{item}"
        end
    end
    if found == "no"
        puts "Invalid input, please try again"
    end

end

def exit_jukebox
    #exits the program
    puts "Goodbye!"
end


def run(songs)
    #
 
    loop do
        users_command = " "
        $stdout.puts "Please enter a command:"
        users_command = gets.strip

    
        if users_command == "help"
            help
        elsif users_command == "list"
            list(songs)
        elsif users_command == "play"
            play(songs)
        elsif users_command == "exit"
            exit_jukebox
        else
            puts "That is not an accepted command"
        end
        
    break if users_command == "exit"
    end
end
