class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name
  end

  def self.new_by_filename (file_name)
    #parse the file_name
    new_filename = file_name.split(" - ")
    #create a new Song object using the split file_name
    song = self.new(new_filename[1])

    #set the artist of the song by invoking the find_or_create_by_name Artist class method.
    song.artist = Artist.find_or_create_by_name(new_filename[0])
    song.artist.add_song(song)

    #return the song object
    song
  end

end
