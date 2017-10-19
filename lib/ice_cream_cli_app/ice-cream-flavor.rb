class IceCream::IceCreamFlavor
  #heavy lifting
  #extra data
  #initialize, @@all
  attr_accessor :parlor_name, :flavor_name, :url, :description, :ingredients

  @@all = []

  def initialize
    @parlor_name = parlor_name
    @url = url
    @flavor_name = flavor_name
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    #if bj do @ingredients ||= css
    #if hd do @ingredients ||= css
  end

  def description
    #if bj do @description ||= css
    #if hd do @description ||= css
  end
end
