class IceCreamCliApp::IceCreamFlavor
  attr_accessor :flavor_name, :parlor_name, :url, :description, :ingredients
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.search_ingredients(keyword)
    #returns an array of all the flavors that contain the keyword in its ingredients
    #lime juice, FIND METHOD
    "hello"
  end
end
