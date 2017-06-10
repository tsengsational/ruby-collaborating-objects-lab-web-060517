require 'pry-byebug'
class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.all
    @@all
  end

  def save
    Artist.all << self
  end

  def add_song(song)
    # binding.pry
    @songs << song
  end

  def self.find_by_name(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name).is_a?(Artist)
      self.find_by_name(name)
    else
      self.new(name)
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
