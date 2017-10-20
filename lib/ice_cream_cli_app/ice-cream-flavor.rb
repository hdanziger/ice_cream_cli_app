class IceCreamCliApp::IceCreamFlavor
  attr_accessor :flavor_name, :parlor_name, :url, :description, :ingredients

  def self.all
    #puts <<-DOC
    #New flavors:
    #1. Oat Of This Swirled
  #  2. One Sweet World
    #3. Truffle Kerfuffle
  #  4. Bourbon Praline Pecan
  #  5. Espresso Chocolate Cookie Crumble
  #  6. Toasted Coconut Caramel
  #  DOC

    flavor_1 = self.new
    flavor_1.flavor_name = "One Sweet World"
    flavor_1.parlor_name = "Ben and Jerry's"
    flavor_1.url = "http://www.benjerry.com/flavors/one-sweet-world-ice-cream"
    flavor_1.description = "One Sweet World description"
    flavor_1.ingredients = "One Sweet World ingredients"

    flavor_2 = self.new
    flavor_2.flavor_name = "Oat Of This Swirled"
    flavor_2.parlor_name = "Ben and Jerry's"
    flavor_2.url = "http://www.benjerry.com/flavors/oat-of-this-swirled-ice-cream"
    flavor_2.description = "Oat Of This Swirled description"
    flavor_2.ingredients = "TOat Of This Swirled ingredients"

    flavor_3 = self.new
    flavor_3.flavor_name = "Truffle Kerfuffle"
    flavor_3.parlor_name = "Ben and Jerry's"
    flavor_3.url = "http://www.benjerry.com/flavors/truffle-kerfuffle-ice-cream"
    flavor_3.description = "Truffle Kerfuffle description"
    flavor_3.ingredients = "Truffle Kerfuffle ingredients"

    flavor_4 = self.new
    flavor_4.flavor_name = "Bourbon Praline Pecan"
    flavor_4.parlor_name = "Haagen Dazs"
    flavor_4.url = "https://www.haagendazs.us/products/4154/ice-cream/bourbon-praline-pecan"
    flavor_4.description = "Bourbon Praline Pecan description"
    flavor_4.ingredients = "Bourbon Praline Pecan ingredients"

    flavor_5 = self.new
    flavor_5.flavor_name = "Espresso Chocolate Cookie Crumble"
    flavor_5.parlor_name = "Haagen Dazs"
    flavor_5.url = "https://www.haagendazs.us/products/4153/ice-cream/espresso-chocolate-cookie-crumble"
    flavor_5.description = "Espresso Chocolate Cookie Crumble description"
    flavor_5.ingredients = "Espresso Chocolate Cookie Crumble ingredients"

    flavor_6 = self.new
    flavor_6.flavor_name = "Toasted Coconut Caramel"
    flavor_6.parlor_name = "Haagen Dazs"
    flavor_6.url = "https://www.haagendazs.us/products/4152/ice-cream/toasted-coconut-caramel"
    flavor_6.description = "Toasted Coconut Caramel description"
    flavor_6.ingredients = "Toasted Coconut Caramel ingredients"

    [flavor_1, flavor_2, flavor_3, flavor_4, flavor_5, flavor_6]
  end
end
