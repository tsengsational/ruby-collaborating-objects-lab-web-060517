require 'pry-byebug'
class Song
  attr_accessor :name, :artist

  def initialize(name)
      @name = name
  end

  def self.new_by_filename(filename)
    song_info = filename.split(" - ")
    name = song_info[1]
    artist_name = song_info[0]
    artist = Artist.find_or_create_by_name(artist_name)
    song = self.new(name)
    song.artist = artist
    song.artist.add_song(song)
    song
    # binding.pry
  end

end

# Pry.start
