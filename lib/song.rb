require "pry"

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@all = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
        @@all << self
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
        genre_count_hash = {}
        @@genres.each do |genre|
            if genre_count_hash.key?(genre)
                genre_count_hash[genre] +=1
            else
                genre_count_hash[genre] = 1
            end
        end
        genre_count_hash
    end

        def self.artist_count
            @@artists.tally
        end

        def self.all
            @@all
        end

end

s1 = Song.new("Cool Song", "Coolio", "Hip Hop")
s2 = Song.new("Goosebumps", "Travis Scott", "Rap")
s3 = Song.new("I Want To Break Free", "Queen", "Hip-Hop")
s4 = Song.new("Always Be My Baby", "Mariah Carey", "Hip Hop")
s5 = Song.new("Beer", "Alan Jackson", "Country")
