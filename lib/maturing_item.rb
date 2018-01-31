require_relative "item"

class MaturingItem < Item

  attr_reader :type

  def initialize(name, sell_in, quality)
    super
    @type = "maturing"
  end

  def item_change
    @sell_in > 0 ? @quality += 1 : @quality += 2
  end

end
