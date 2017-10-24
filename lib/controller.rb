class Controller

  def call
    Scraper.new
    puts " "
    puts "*///// TOP DEMOS of the month FROM Pouet.net /////*"
    list_demos
    ask
  end # end call

  def list_demos
    counter = 1

    puts " "

    Demo.all.each do |demo|
      if counter <= 9
        puts "#{counter}.  #{demo.title} by #{demo.group}"
        puts "      #{demo.youtube}"
      else
        puts "#{counter}. #{demo.title} by #{demo.group}"
        puts "      #{demo.youtube}"
        puts " "
      end

      counter += 1
    end
  end

  def more_info(input)
    input = input.to_i
    input -= 1

    puts " "
    puts "Title: #{Demo.all[input].title}"
    puts "Group: #{Demo.all[input].group}"
    puts "Type: #{Demo.all[input].type}"
    puts "Platform: #{Demo.all[input].platform}"
    puts "Youtube: #{Demo.all[input].youtube}"
    puts "File: #{Demo.all[input].file_url}"
    puts "Pouet Info: #{Demo.all[input].url}"
    puts " "
  end

  def ask
    puts "Type exit to leave."
    puts "Type list to list the demos again."
    puts "For more information type the demo's number."

    input = gets.strip

    numbers = [*(1..10)]
    numbers.collect! {|n| n.to_s}

    if !valid_input?(input, numbers)
      puts " "
      puts "Please enter a valid command."
      puts " "
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
