class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
     end

     def songs
        @songs
     end

     def add_song(song)
        Song.all.each {|song| song.artist == self}
        song.artist == self
     end
end
