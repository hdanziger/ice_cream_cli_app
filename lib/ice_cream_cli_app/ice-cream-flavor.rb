class IceCreamCliApp::IceCreamFlavor
  attr_accessor :flavor_name, :parlor_name, :url, :description, :ingredients

  def self.all
    puts <<-DOC
    New flavors:
    1. Oat Of This Swirled
    2. One Sweet World
    3. Truffle Kerfuffle
    4. Bourbon Praline Pecan
    5. Espresso Chocolate Cookie Crumble
    6. Toasted Coconut Caramel
    DOC

    flavor_1 = self.new
    flavor_1.flavor_name = "One Sweet World"
    flavor_1.parlor_name = "Ben and Jerry's"
    flavor_1.url = "http://www.benjerry.com/flavors/one-sweet-world-ice-cream"
    flavor_1.description = "One Sweet World description"
    flavor_1.ingredients = "One Sweet World ingredients"

    flavor_1 = self.new
    flavor_1.flavor_name = "Oat Of This Swirled"
    flavor_1.parlor_name = "Ben and Jerry's"
    flavor_1.url = "http://www.benjerry.com/flavors/oat-of-this-swirled-ice-cream"
    flavor_1.description = "Oat Of This Swirled description"
    flavor_1.ingredients = "TOat Of This Swirled ingredients"

    flavor_1 = self.new
    flavor_1.flavor_name = "Truffle Kerfuffle"
    flavor_1.parlor_name = "Ben and Jerry's"
    flavor_1.url = "http://www.benjerry.com/flavors/truffle-kerfuffle-ice-cream"
    flavor_1.description = "Truffle Kerfuffle description"
    flavor_1.ingredients = "Truffle Kerfuffle ingredients"

    flavor_1 = self.new
    flavor_1.flavor_name = "Bourbon Praline Pecan"
    flavor_1.parlor_name = "Haagen Dazs"
    flavor_1.url = "https://www.haagendazs.us/products/4154/ice-cream/bourbon-praline-pecan"
    flavor_1.description = "Bourbon Praline Pecan description"
    flavor_1.ingredients = "Bourbon Praline Pecan ingredients"

    flavor_1 = self.new
    flavor_1.flavor_name = "Espresso Chocolate Cookie Crumble"
    flavor_1.parlor_name = "Haagen Dazs"
    flavor_1.url = "https://www.haagendazs.us/products/4153/ice-cream/espresso-chocolate-cookie-crumble"
    flavor_1.description = "Espresso Chocolate Cookie Crumble description"
    flavor_1.ingredients = "Espresso Chocolate Cookie Crumble ingredients"

    flavor_6 = self.new
    flavor_6.flavor_name = "Toasted Coconut Caramel"
    flavor_6.parlor_name = "Haagen Dazs"
    flavor_6.url = "https://www.haagendazs.us/products/4152/ice-cream/toasted-coconut-caramel"
    flavor_6.description = "Toasted Coconut Caramel description"
    flavor_6.ingredients = "Toasted Coconut Caramel ingredients"

    [flavor_1, flavor_2, flavor_3, flavor_4, flavor_5, flavor_6]
  end
end
