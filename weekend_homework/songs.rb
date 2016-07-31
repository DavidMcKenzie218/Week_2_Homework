class Song

  attr_reader :song_hash

  def initialize(song_hash)
    @song_hash = song_hash
  end 

  def title
    return @song_hash[:title]
  end

  def artist
    return @song_hash[:artist]
  end


end