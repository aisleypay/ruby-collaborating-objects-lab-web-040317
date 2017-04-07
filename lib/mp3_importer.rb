class MP3Importer
  attr_reader :path

  def initialize (path)
    @path = path
  end

  def files
    files = []
    Dir.foreach(@path) do |file|
      #skip the current and parent directories
      next if file == '.' || file == '..'
      files << file
    end

    files
  end

  def import
    files.each { |file|
      song = Song.new_by_filename(file)
    }
  end

end
