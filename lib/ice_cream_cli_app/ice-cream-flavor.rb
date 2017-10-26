class IceCreamCliApp::IceCreamFlavor
  attr_accessor :flavor_name, :parlor_name, :url, :description, :ingredients
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.search_ingredients(ingredient = flavor.ingredients)
    lime_juice = []
    IceCreamCliApp::IceCreamFlavor.all.each do |flavor|
      flavor.inspect.each do |ingredient|
        lime_juice << ingredient.detect("lime juice")
    #returns an array of all the flavors that contain the keyword in its ingredients
    #lime juice, FIND METHOD

      end
    end

  end
end
