require_relative "item"

class ConjouredItem < Item

  attr_reader :type

  def initialize(name, sell_in, quality)
    super
    @type = "conjoured"
  end

  def item_change
    @quality -= 2
    @sell_in -= 1
  end

end
