require 'pry'

class Song 

attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@artists_total = []
@@genres = []
@@genres_total = []

def initialize (name, artist, genre) 
  @name = name
  @artist = artist
  @genre = genre
  
  @@count += 1 
  
  @@artists_total << artist
   
  #if !@@artists.include?(artist) #|| uniqueness condition 
  #@@artists << artist
  #end
  
  @@genres_total << genre 
  
  #if !@@genres.include?(genre) #|| uniqueness condition 
  #@@genres << genre 
  #end 
end

def self.count 
  @@count
end

def self.artists
  @@artists
end

def self.genres
  @@genres
end

def self.genre_count
  
  @genre_hash = {}
  binding.pry # // @@genres_total = 34
    
  @@genres_total.each do |genre|
    if @genre_hash.key?(genre)
      @genre_hash[genre] += 1  
    else
      @genre_hash[genre] = 1 
    end
  end
  
  @genre_hash

end

def self.artist_count
  
  @artist_hash = {}
  
  @@artists_total.each do |artist|
    if @artist_hash.key?(artist)
      @artist_hash[artist] += 1 
    else
      @artist_hash[artist] = 1 
    end
  end
  
  @artist_hash

end

end #CLASS END 









