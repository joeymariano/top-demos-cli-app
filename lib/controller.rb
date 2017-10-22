class Controller

  def call

    Scraper.new
    list_demos
    # more_info
    # exit?
  end

  def list_demos
    puts "\n"
    puts "*///// TOP DEMOS of the month FROM Pouet.net /////*"
    puts "\n"
    counter = 1
    Demo.all.each do |demo|
      if counter <= 9
        puts "#{counter}.  #{demo.title} by #{demo.group}"
        puts "      #{demo.youtube}"
      else
        puts "#{counter}. #{demo.title} by #{demo.group}"
        puts "      #{demo.youtube}"
        puts "\n"
      end
      counter += 1
    end
  end

  def more_info
    puts "\nWhich demo # would you like more information on?"
    input = gets.strip
    case input
      when "1"

      when "2"

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
