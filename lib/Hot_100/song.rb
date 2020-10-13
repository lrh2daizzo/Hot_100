class Hot100::Song
    attr_accessor :rank, :name, :artist
    @@all = []

    def initialize
        @@all << self
    end

    def self.all 
        @@all 
    end

    #constructor - make new songs from hot 100 chart
    def self.new_from_collection(c)
        Hot100::Song.new.tap do |song| c.each { |k,v| song.send("#{k}=", v)}
            
        end
    end


end