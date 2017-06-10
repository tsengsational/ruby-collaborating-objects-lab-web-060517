require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir["#{@path}/**/*.mp3"]
    files.map {|filename| filename.gsub(@path + "/", "")}
  end

  def import
    filenames = files
    # binding.pry
    filenames.each{ |filename| Song.new_by_filename(filename) }
  end

end
