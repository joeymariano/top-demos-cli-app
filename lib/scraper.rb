class Scraper

  def initialize
    doc = Nokogiri::HTML(open("http://pouet.net/index.php"))
    create_demos(doc)
  end

  def create_demos(doc)
    title = nil
    group = nil
    url = nil
    type = nil
    platform = nil
    doc.css('#pouetbox_topmonth li').each do |demo|
      title = demo.css('span.prod').text
      group = demo.css('span.group a').text
      url = "http://pouet.net/" + demo.at_css('span.prod a')['href']
      type = demo.css('span.typeiconlist').text.chomp
      platform = demo.css('span.platformiconlist').text.chomp
      additional_info = get_frm_demos_pg(url)
      youtube = additional_info[1]
      file_url = additional_info[0]
      Demo.new(title, group, url, type, platform, youtube, file_url)
    end
    binding.pry
  end

  def get_frm_demos_pg(url)
    result = []
    demo_doc = Nokogiri::HTML(open(url))
    demo_doc.css('#links ul li').each do |link|
      result << link.at('a').attr('href')
      #need to use regex to capture correct info
    end
    result
  end

end
