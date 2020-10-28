
class Hot100::Scraper
   
  def get_page
    doc = Nokogiri::HTML(open('https://www.billboard.com/charts/hot-100'))
    # songs = []

    doc.search("li.chart-list__element.display--flex").map do |song|
        rank = song.css("span.chart-element__rank__number").text
        name = song.css("span.chart-element__information__song").text
        artist = song.css("span.chart-element__information__artist").text
         
        {rank: rank, name: name, artist: artist}
    end
  #contains a hash for each song on the chart {rank: 1, name: Franchise, artist: Travis Scott}
  end
    
  def create_songs
    get_page.each do |c| 
      Hot100::Song.new_from_collection(c)
      
    end
  end
  
end