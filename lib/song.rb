class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        filename_split = filename.split(" - ")
        song = Song.new(filename_split[1])
        song.artist = Artist.find_or_create_by_name(filename_split[0])
        song
    end
end