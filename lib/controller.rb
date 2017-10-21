class Controller

  def call

    hi = Scraper.new
    # list_demos
    # more_info
    # exit?
  end

  def list_demos
    puts "\n"
    puts "*///// TOP DEMOS of the month FROM Pouet.net /////*"
    puts "\n"
    puts <<-DOC
      1. Waillee by Prismbeings
         https://www.youtube.com/watch?v=CDDedA-x2-k
      2. hold on by holon
         https://www.youtube.com/watch?v=3wIJwfyeOB0
    DOC
  end

  def more_info
    puts "\nWhich demo # would you like more information on?"
    input = gets.strip
    case input
      when "1"
        puts <<-DOC
        Waillee by Prismbeings
        https://www.youtube.com/watch?v=CDDedA-x2-k
        platform : Windows
        type : 4k
        release date :	October 2017
        release party :	Deadline (Berlin) 2017
        compo :	pc 4k
        ranked :	1st
        DOC
        puts "\n"
      when "2"
        puts <<-DOC
        hold on by holon
        https://www.youtube.com/watch?v=3wIJwfyeOB0
        platform : JavaScript
        type : demo
        release date :	october 2017
        release party :	Deadline (Berlin) 2017
        compo :	pc demo
        ranked : 1st
        DOC
        puts "\n"
      else
        puts "\n"
        puts "Please select a valid number."
        more_info
    end
  end

  def exit?
    puts "Would you like to exit y/n?"
    puts "Answering no will bring you back to the list."
    input = gets.strip
    if input == "y" || input == "Y"
      # do nothing and leave loop
    elsif input == "n" || input == "N"
      self.call
    else
      exit?
    end
  end

end # class end
