#Cli controller

class Hot100::CLI
  
    def call 
        puts "Welcome to The Hot 100"
        Hot100::Scraper.new.create_songs
        puts "This cli lists the current top 100 songs on the Billboard Chart"
        puts ""
        start
    end

    def start
        input = ""

        while input != 'exit'
            puts "To see all the songs enter all"
            puts "If you would like to see a certain ranking, enter that number (1-100)"
            puts "or enter exit (to exit)"
            input = gets.strip 
                if (input == 'all')
                 all_songs
                else
                    number = input.to_i
                    list_songs(number)
                end
            puts ""
        end
    end

    def all_songs
        Hot100::Song.all.each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
    end

    def song_list(start, e)
        Hot100::Song.all[start..e].each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
    end

    def list_songs(from_number)
        case from_number
        when 1..10 
            song_list(0,9)
        when 11..20 
            song_list(10,19)
        when 21..30 
            song_list(20,29)
        when 31..40 
            song_list(30,39)
        when 41..50 
            song_list(40,49)
        when 51..60 
            song_list(50,59)
        when 61..70 
            song_list(60,69)
        when 71..80 
            song_list(70,79)
        when 81..90 
            song_list(80,89)
        when 91..100 
            song_list(90,99)
        end
        
    end

    
end