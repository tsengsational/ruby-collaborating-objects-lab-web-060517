require 'pry-byebug'
class Song
  attr_accessor :name

  def initialize(name)
      @name = name
  end

  def self.new_by_filename(filename)
    song_info = filename.split(" - ")
    # binding.pry
    name = song_info[1]
    artist = song_info[0]
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
  end

end
