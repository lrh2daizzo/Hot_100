#Cli controller

class Hot100::CLI
  
    def call 
        puts "Welcome to Hot 100"
        Hot100::Scraper.new.get_page 
        list_songs
    end

    def list_songs
        puts <<-DOC.gsub /^\s*/, " "
            1. 
            2.
            3.
            4.
        DOC
    end

    
end