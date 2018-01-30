class MaturingItem < Item

  attr_reader :type

  def initialize(name, sell_in, quality)
    super
    @type = "maturing"
  end

  def product_change
    @sell_in += 1
    @quality += 1
  end

end
