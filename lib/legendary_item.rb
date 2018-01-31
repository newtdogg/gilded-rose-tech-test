require_relative "item"

class LegendaryItem < Item

  attr_reader :type

  def initialize(name, sell_in, quality)
    super
    @type = "legendary"
  end

  def item_change
    @sell_in += 0
    @quality += 0
  end

end
