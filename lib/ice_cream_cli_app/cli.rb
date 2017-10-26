require 'pry'
class IceCreamCliApp::CLI

  def call
    puts "Welcome to the newest 3 ice cream flavors for each of the top 2 brands!"
    IceCreamCliApp::Scraper.scrape_ice_creams
    #binding.pry
    list_flavors
    details
  end

  def list_flavors
    IceCreamCliApp::IceCreamFlavor.all.each.with_index(1) do |flavor, i|
      puts "#{i}. #{flavor.flavor_name} - #{flavor.parlor_name}"
    end
  end

  def details
    input = nil
    while input != "exit"
        puts "Enter flavor number you'd like more info on, or type list to see flavors, or type exit:"
      input = gets.strip

      if input == "list"
        list_flavors
      elsif input == "exit"
        goodbye
      elsif input.to_i.between?(1, IceCreamCliApp::IceCreamFlavor.all.size)
        flavor = IceCreamCliApp::IceCreamFlavor.all[input.to_i-1]
        puts "#{flavor.flavor_name}, by #{flavor.parlor_name} - Flavor Description: #{flavor.description} - Flavor ingredients: #{flavor.ingredients}"
      else
       puts "Oops! that number doesn't have a flavor. Try again, or type list or exit!"
      end
    end
  end

  def goodbye
    puts "Thanks for visiting! Check back again for new flavors."
  end

end
