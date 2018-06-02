require 'pry'
class MP3Importer

  attr_accessor :path, :file

  def initialize(path)
    @path = path
    library = []
  end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end

  def import
    artist.all << Song.new_by_filename(file)

  end
end
