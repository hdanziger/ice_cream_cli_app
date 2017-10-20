class IceCreamCliApp::CLI

  def call
    list_flavors
    menu
    goodbye
  end

  def list_flavors
    puts "Welcome to the newest 3 ice cream flavors for each of the top 2 brands!"
    @flavors = IceCreamCliApp::IceCreamFlavor.all
    @flavors.each.with_index(1) do |flavor, i|
      puts "#{i}. #{flavor.flavor_name} - #{flavor.parlor_name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
        puts "Enter flavor number you'd like more info on, or type list to see flavors, or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_flavors = @flavors[input.to_i-1]
        puts "#{the_flavors.flavor_name} - #{the_flavors.parlor_name}"
      elsif input == "list"
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
