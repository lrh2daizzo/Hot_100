#Cli controller

class Hot100::CLI
  
    def call 
        puts "Welcome to The Hot 100"
        Hot100::Scraper.new.create_songs
        puts ""
        list_songs
    end

    def list_songs
        Hot100::Song.all.each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
    end

    
end