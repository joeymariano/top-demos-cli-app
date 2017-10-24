class Controller

  def call
    Scraper.new
    puts "\n"
    puts "*///// TOP DEMOS of the month FROM Pouet.net /////*"
    puts "type 'exit' at any time"
    puts "\n"
    list_demos
    ask
  end # end call

  def list_demos
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

  def more_info(input)
    input = input.to_i
    input -= 1
    puts " \n"
    puts "Title: #{Demo.all[input].title}"
    puts "Group: #{Demo.all[input].group}"
    puts "Type: #{Demo.all[input].type}"
    puts "Platform: #{Demo.all[input].platform}"
    puts "Youtube: #{Demo.all[input].youtube}"
    puts "File: #{Demo.all[input].file_url}"
    puts "Pouet Info: #{Demo.all[input].url}"
    puts "\n"
  end

  def ask
    puts "To exit type 'exit'"
    puts "For more information type the # for the demo."
    puts "To list the demos again type 'list'."
    input = gets.strip
    numbers = [*(1..10)]
    numbers.collect! {|n| n.to_s}
    if !valid_input?(input, numbers)
      puts "Please enter a valid command."
      ask
    elsif input == 'list'
      list_demos
      ask
    elsif numbers.include?(input)
      more_info(input)
      ask
    else
      #exit program
    end
  end

  def valid_input?(input, numbers)
    if numbers.include?(input)
      true
    elsif input == 'exit'
      true
    elsif input == 'list'
      true
    else
      false
    end
  end

end # class end
