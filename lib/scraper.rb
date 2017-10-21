class Scraper
  attr_accessor :homepage, :artist_page

  def initialize
    @homepage = File.open("http://pouet.net") { |f| Nokogiri::HTML(f) }
    binding.pry
  end

end

Scraper.new
