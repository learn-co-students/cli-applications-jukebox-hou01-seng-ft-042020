songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def play(song_list)
  puts "Please enter a song name or number:"
  user_choice = gets.strip
  if song_list.include?(user_choice)
    puts "Playing #{user_choice}"
  else
    user_choice = user_choice.to_i
    if (user_choice > 0 && user_choice < 10)
      puts "Playing #{song_list[user_choice-1]}"
    else
      puts "Invalid input, please try again."
    end 
  end
end 

def list(song_list)
  counter = 1
  song_list.each do |song| 
    puts "#{counter}. #{song}"
    counter+=1
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  while true do
    puts "Please enter a command:"
    user_input = gets.strip
    case user_input    
    
    when "exit"
      exit_jukebox
      break
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "help"
      help
    end
  
  end 
end 



