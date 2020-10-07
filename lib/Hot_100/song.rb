class Hot100::Song
    @@all = []

    def initialize
        @@all << self
    end

    def self.all 
        @@all 
    end

    #constructor - make new songs from hot 100 chart

end