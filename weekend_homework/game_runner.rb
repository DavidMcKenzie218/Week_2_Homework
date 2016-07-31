require_relative './room_class'
require_relative './guest'
require_relative './songs'
require 'pry-byebug'


class GameRunner

  def initialize()
    @counter = 0
  end

  def run_karaoke    
    add_guest_to_room()
    add_songs_to_room()
    display_playlist()
    display_next_song()
  end

  def start_game
    puts "Welcome to the CodeClan Caraoke."
    puts "Would you like to book a room?"
    puts "y - YES,      n - NO"
    book_room = gets.chomp
    if book_room == "y"
      run_karaoke()
    else
      exit
    end

  end

  def add_guest_to_room
    @new_room = Room.new()
    @new_room.add_new_guest()
  end

  def display_guest_list
    puts @new_room.guest_list()
  end

  def add_songs_to_room
    @new_room.add_song_to_playlist() 
  end

  def display_playlist
    puts "Your Playlist for tonight is: "
    playlist = @new_room.playlist
    for song in playlist
      puts "#{song[:title]} by #{song[:artist]}"
    end
  end

  def display_next_song
    #binding.pry
    puts "Your next song is #{@new_room.song_title} by #{@new_room.song_artist}"
  end

end




#GAME START


game_runner = GameRunner.new()
game_runner.start_game()