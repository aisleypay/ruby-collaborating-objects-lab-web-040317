class Artist
  attr_accessor :name
  #array of artist objects
  @@all = []

  def initialize (name)
    @name = name
    @songs = []
    save
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def save #pushed each artist instance into @@all
    @@all << self
  end

  def print_songs
    @songs.each{ |song| puts song.name}
  end

#pushes a song object into the @songs array, then sets the song objects artist attribute to the current artist object]
  def add_song (song)
    @songs << song
    song.artist = self
  end

#finds the first matching artist object's name attribute to the name arguements and returns it. If not found, creates a new Artist object.
  def self.find_or_create_by_name (name)
    if self.all.find {|artist| artist.name == name}
      self.all.find {|artist| artist.name == name}
    else
      self.new(name)
    end
  end

end
