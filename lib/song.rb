require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  @@artist_count = { }
  @@genre_count = { }

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist

  end

  def self.count
    @@count
  end
  def self.genres

    @@genres.uniq
  end
  def self.artists

    @@artists.uniq
  end
  def self.genre_count
    binding.pry
    @@genres.uniq.each{|h| @@genre_count[h] = @@genres.count(h)}

  end
  def self.artist_count
    # @@artist_count.count
  end
end
