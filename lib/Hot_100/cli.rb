#Cli controller

class Hot100::CLI
  
    def call 
        puts "Welcome to The Hot 100"
        Hot100::Scraper.new.create_songs
        puts "This cli lists the current top 100 songs on the Billboard Chart (in increments of 10)."
        puts "Enter a number between 1-100 or all (for all the songs)"
        input = gets.strip
        puts ""
        
        if (input == 'all')
            all_songs
        else
            number = input.to_i
            list_songs(number)
        end

    end

    def all_songs
        Hot100::Song.all.each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
    end

    def list_songs(from_number)
        case from_number
        when 1..10 
            Hot100::Song.all[0..9].each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
        when 11..20 
            Hot100::Song.all[10..19].each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
        when 21..30 
            Hot100::Song.all[20..29].each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }  
        when 31..40 
            Hot100::Song.all[30..39].each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
        when 41..50 
            Hot100::Song.all[40..49].each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
        when 51..60 
            Hot100::Song.all[50..59].each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
        when 61..70 
            Hot100::Song.all[60..69].each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
        when 71..80 
            Hot100::Song.all[70..79].each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
        when 81..90 
            Hot100::Song.all[80..89].each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
        when 91..100 
            Hot100::Song.all[90..99].each { |song| puts "#{song.rank}.  #{song.name} - #{song.artist} " }
        end
        
    end

    
end