class Scraper

  def initialize
    doc = Nokogiri::HTML(open("http://pouet.net/"))
    create_demos(doc)
  end

  def create_demos(doc)
    title = nil
    group = nil
    url = nil
    type = nil
    platform = nil
    doc.css('#pouetbox_topmonth ul.boxlist li').each do |demo|
      title = demo.css('span.prod').text
      group = demo.css('span.group a').text
      url = demo.at_css('span.prod a')['href']
      type = demo.css('span.typeiconlist').text.chomp
      platform = demo.css('span.platformiconlist').text.chomp
      Demo.new(title, group, url, type, platform)
    end
  end

end
