class Song 
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end
  
  def name
    @name
  end
  
  def artist
    @artist
  end
  
  def genre
    @genre
  end
  @@artists = []
  @@count = 0
  @@genres = []
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.count
    @@count
  end
  
  def self.genre_count
    genre_counter = {}
    genre_counter.each do |genre|
      if genre_counter[genre]
        genre_counter += 1 
      else
        genre_counter[genre] = 1
      end
    end
    genre_counter
  end
  
end