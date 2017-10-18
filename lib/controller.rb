class Controller

  def call
    list_demos
    menu
  end

  def list_demos
    puts "Here come the top demos from Pouet.net.  Awesome."
    puts <<-DOC
      1. Waillee by Prismbeings
         https://www.youtube.com/watch?v=CDDedA-x2-k
      2. hold on by holon
    DOC
  end

  def menu
    puts "Which demo # would you like more information on?"
  end

end
