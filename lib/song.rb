class Song
    # class Body
    attr_accessor :name, :artist, :genre   

    @@count = 0
    @@genres = []
    @@artists = []

    # initialization

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    # returns for song count

    def self.count
        @@count
    end

    # returns for artist and genre array

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    # returns for genre_count and artist_count 

    def self.artist_count
        @@artists.tally
    end

    def self.genre_count
        @@genres.tally
    end

end