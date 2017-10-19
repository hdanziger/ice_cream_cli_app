class IceCreamCliApp::CLI

  def call
    list_flavors
    menu
    goodbye
  end

  def list_flavors
    puts "Welcome to the newest 3 ice cream flavors for the top 2 brands!"
    @flavors = IceCreamCliApp::IceCreamFlavor.all
  end

  def menu
    input = nil
    while input != "exit"
        puts "Enter flavor number you'd like more info on, or type list to see flavors again, or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on Oat Of This Swirled..."
      when "2"
        puts "More info on One Sweet World..."
      when "3"
        puts "More info on Truffle Kerfuffle..."
      when "4"
        puts "More info on Bourbon Praline Pecan..."
      when "5"
        puts "More info on Espresso Chocolate Cookie Crumble..."
      when "6"
        puts "More info on Toasted Coconut Caramel..."
      when "list"
        list_flavors
      else
        puts "Oops! that number doesn't have a flavor. Try again, or type list or exit!"
      end
    end
  end

  def goodbye
    puts "Thanks for visiting! Check back again for new flavors."
  end

end
