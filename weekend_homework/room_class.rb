require 'pry-byebug'
require_relative './guest'
require_relative './songs'
class Room

  attr_reader :guest_list, :playlist

  def initialize(current_guest = 0, current_song = 0)
    @guest_list = []
    @playlist = []
    @rick_song = {
      title: "Never Going To Give You Up", 
      artist: "Rick Astley"}
      @bee_song = {
        title: "Staying Alive",
        artist: "Bee Gees"
      }
      @a_ha_song = {
        title: "Take On Me",
        artist: "A-ha"
      }
    @counter = 0  
    @current_guest = current_guest  
  end

  def add_new_guest
    puts "Please enter your name:"
    user_name = gets.chomp
    new_guest = Guest.new(user_name)
    @guest_list.push(new_guest.name)
    puts "Will there be any one else acopanying you?"
    puts "y - YES,       n - NO"
    user_friend = gets.chomp

    if user_friend == "y"
      puts "How many will be accompanying you?"
      user_friend_count = gets.chomp
      
      while @counter < user_friend_count.to_i
        puts "Please enter your name:"
        friend_name = gets.chomp
        new_guest = Guest.new(friend_name)
        @guest_list.push(new_guest.name)
        @counter += 1
      end

    end

  end

  def guest_name
    return @guest_list[@current_guest]
  end

  def add_song_to_playlist
    puts "Would you like to add a song to the room?"
    puts "y - YES,      n - NO"
    user_choice = gets.chomp
    if user_choice == "y"
      puts "What song would you like?"
      puts "1 - Never Going To Give You Up, 2 - Staying Alive, 3 - Take On Me"
      @user_song_choice = gets.chomp
      playlist_choice()
    end
      
  end

  def song_title
      return @playlist[0][:title]
  end 

  def song_artist
    return @playlist[0][:artist]
  end

  def remove_guest
    @guest_list.delete_at(0)
  end

  def remove_song
    @playlist.delete_at(0)
  end

  def playlist_choice
    case @user_song_choice
      when "1"
        song = Song.new(@rick_song)
        @playlist.push(song.song_hash())
      when "2"
        song = Song.new(@bee_song)
        @playlist.push(song.song_hash)
      when "3"
        song = Song.new(@a_ha_song)
        @playlist.push(song.song_hash)
    end
    add_song_to_playlist()
  end

end