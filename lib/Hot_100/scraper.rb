
class Hot100::Scraper
   
  def get_page
    doc = Nokogiri::HTML(open('https://www.billboard.com/charts/hot-100'))
    songs = []

    doc.search("li.chart-list__element.display--flex").map do |song|
        rank = song.css("span.chart-element__rank__number").text
        name = song.css("span.chart-element__information__song").text
        artist = song.css("span.chart-element__information__artist").text
         
        songs << {rank: rank, name: name, artist: artist}
    end

    songs #contains a hash for each song on the chart {rank: 1, name: Franchise, artist: Travis Scott}
  end
    

end