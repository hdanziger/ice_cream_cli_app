class IceCreamCliApp::IceCreamFlavor
  attr_accessor :flavor_name, :parlor_name, :url, :description, :ingredients

  def self.all
    self.scrape_ice_creams
  end
    def self.scrape_ice_creams
      ice_creams = []

      ice_creams << self.scrape_bj_OSW
      ice_creams << self.scrape_bj_OOTS
      ice_creams << self.scrape_bj_TK
      ice_creams << self.scrape_hd_BPP
      ice_creams << self.scrape_hd_ECCC
      ice_creams << self.scrape_hd_TCC

      ice_creams
  end

  def self.scrape_bj_OSW
    doc = Nokogiri::HTML(open("http://www.benjerry.com/flavors/one-sweet-world-ice-cream"))

    flavor = self.new
    flavor.flavor_name = doc.css("h1.productDetails-name[itemprop='name']").text
    flavor.parlor_name = "Ben & Jerry's"
    flavor.url = "http://www.benjerry.com/flavors/one-sweet-world-ice-cream"
    flavor.description = doc.css("p#productDetails-product_history").text.strip
    flavor.ingredients = doc.css("div.package-ingredients").text.strip.downcase

    flavor
  end

  def self.scrape_bj_OOTS
    doc = Nokogiri::HTML(open("http://www.benjerry.com/flavors/oat-of-this-swirled-ice-cream"))

    flavor = self.new
    flavor.flavor_name = doc.css("h1.productDetails-name[itemprop='name']").text.strip
    flavor.parlor_name = "Ben & Jerry's"
    flavor.url = "http://www.benjerry.com/flavors/oat-of-this-swirled-ice-cream"
    flavor.description = doc.css("p#productDetails-product_history").text.strip
    flavor.ingredients = doc.css("div.package-ingredients").text.strip.downcase

    flavor
  end

  def self.scrape_bj_TK
    doc = Nokogiri::HTML(open("http://www.benjerry.com/flavors/truffle-kerfuffle-ice-cream"))

    flavor = self.new
    flavor.flavor_name = doc.css("h1.productDetails-name[itemprop='name']").text.strip
    flavor.parlor_name = "Ben & Jerry's"
    flavor.url = "http://www.benjerry.com/flavors/truffle-kerfuffle-ice-cream"
    flavor.description = doc.css("p#productDetails-product_history").text.strip
    flavor.ingredients = doc.css("div.package-ingredients").text.strip.downcase

    flavor
  end

  def self.scrape_hd_BPP
    doc = Nokogiri::HTML(open("https://www.haagendazs.us/products/4154/ice-cream/bourbon-praline-pecan"))

    flavor = self.new
    flavor.flavor_name = doc.css("h1.product-title[itemprop='name']").text.strip
    flavor.parlor_name = "Haagen Dazs"
    flavor.url = "https://www.haagendazs.us/products/4154/ice-cream/bourbon-praline-pecan"
    flavor.description = doc.css("h4.romance-copy").text.strip
    flavor.ingredients = doc.css("div.ingredients").text.strip.downcase

    flavor
  end

  def self.scrape_hd_ECCC
    doc = Nokogiri::HTML(open("https://www.haagendazs.us/products/4153/ice-cream/espresso-chocolate-cookie-crumble"))

    flavor = self.new
    flavor.flavor_name = doc.css("h1.product-title[itemprop='name']").text.strip
    flavor.parlor_name = "Haagen Dazs"
    flavor.url = "https://www.haagendazs.us/products/4153/ice-cream/espresso-chocolate-cookie-crumble"
    flavor.description = doc.css("h4.romance-copy").text.strip
    flavor.ingredients = doc.css("div.ingredients").text.strip

    flavor
  end

  def self.scrape_hd_TCC
    doc = Nokogiri::HTML(open("https://www.haagendazs.us/products/4152/ice-cream/toasted-coconut-caramel"))

    flavor = self.new
    flavor.flavor_name = doc.css("h1.product-title[itemprop='name']").text.strip
    flavor.parlor_name = "Haagen Dazs"
    flavor.url = "https://www.haagendazs.us/products/4152/ice-cream/toasted-coconut-caramel"
    flavor.description = doc.css("h4.romance-copy").text.strip
    flavor.ingredients = doc.css("div.ingredients").text.strip

    flavor
  end
end
