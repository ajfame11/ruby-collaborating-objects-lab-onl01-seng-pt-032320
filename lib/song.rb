<<<<<<< HEAD
require 'pry'

class Song
  attr_accessor :artist, :name
  @@all = []
  def initialize(name)
    @name = name
    save
=======
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
>>>>>>> d96d0417ca19bc47bf3353f3a7f54e5e38ae6398
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
<<<<<<< HEAD
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
=======
>>>>>>> d96d0417ca19bc47bf3353f3a7f54e5e38ae6398

  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
end