def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  songs.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
end

def play(songs)
  puts “Please enter a song name or number:”
  user_input = gets.strip
  songs.each.with_index(1) do |song, index|
    if user_input.to_i == index
    puts “Playing #{songs[index]}”
  elsif user_input == song
    puts “Playing {#song}"
  end
end
    puts “Invalid input, please try again”
end

def exit_jukebox
  #puts goodbye
  puts "Goodbye"
end
