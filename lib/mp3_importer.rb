require 'pry'
class MP3Importer

  attr_accessor :path, :filenames

  def initialize(path)
    @path = path

  end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end

  def import
    self.files.include? do |filename|
      #binding.pry
     Artist.all << Song.new_by_filename(filename)
    end
  end
end
