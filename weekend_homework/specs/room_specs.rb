require 'minitest/autorun'
require 'minitest/rg'
require_relative '../room_class'
require_relative '../guest'
require_relative '../songs'

class RoomTest < MiniTest::Test 

  def setup
    @new_room = Room.new()
  end

  def test_room_has_guest_list
    assert_equal([], @new_room.guest_list())
  end

  def test_room_can_create_a_new_guest
    @new_room.add_new_guest()
    assert_equal(1, @new_room.guest_list.count)
  end

  def test_new_guest_has_name
    @new_room.add_new_guest()
    assert_equal("David", @new_room.guest_name())
  end

  def test_room_has_a_playlist
    assert_equal([], @new_room.playlist())
  end

  def test_add_song_to_playlist
    @new_room.add_song_to_playlist()
    assert_equal(1, @new_room.playlist.count)
  end

  def test_room_can_get_song_title
    @new_room.add_song_to_playlist()
    assert_equal("Never Going to Give You Up", @new_room.song_title())
  end

  def test_room_can_get_song_artist
    @new_room.add_song_to_playlist
    assert_equal("Rick Astley", @new_room.song_artist())
  end

  def test_room_can_remove_guest
    @new_room.add_new_guest()
    @new_room.remove_guest()
    assert_equal([], @new_room.guest_list())
  end

  def test_room_can_remove_song
    @new_room.add_song_to_playlist()
    @new_room.remove_song()
    assert_equal([], @new_room.playlist())
  end

end