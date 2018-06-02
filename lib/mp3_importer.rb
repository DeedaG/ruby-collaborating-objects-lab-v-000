class MP3Importer

  attr_accessor :path, :songs

  def initialize(path)
    @path = path
    @@all = []
  end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end

  def import
    self.files.each do |filename|
     @@all << Song.new_by_filename(filename)
    end
  end
end
