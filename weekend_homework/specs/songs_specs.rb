require 'minitest/autorun'
require 'minitest/rg'
require_relative '../songs'

class SongsTest < Minitest::Test

  def setup
    @song = Song.new({
      title: "Never Going to Give You Up", 
      artist: "Rick Astley"})
  end

  def test_song_has_a_title
    assert_equal("Never Going to Give You Up", @song.title())
  end

  def test_song_has_an_artist
    assert_equal("Rick Astley", @song.artist())
  end

end