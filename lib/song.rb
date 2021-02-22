class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@artists = []
  @@genres = [] 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    count_hash = {}
    
    @@genres.each do |genre|
      if count_hash.has_key?(genre)
        count_hash[genre] += 1 
      else
        count_hash[genre] = 1
      end
    end
    
    puts count_hash
    return count_hash
  end
  
  def self.artist_count
    count_hash = {}
    
    @@artists count_hash.has_key?(artist)
        count_hash[artist] += 1 
      else
        count_hash[artist] = 1
      end
    end
    
    puts count_hash
    return count_hash
  end
end