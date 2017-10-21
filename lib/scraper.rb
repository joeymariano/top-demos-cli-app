class Scraper
  attr_accessor :homepage, :artist_page

  def initialize
    @homepage = Nokogiri::HTML(open("http://pouet.net/"))
    binding.pry
  end

  def create_demos
    @homepage
  end


end
