require_relative "item"

class EventItem < Item

  attr_reader :type

  def initialize(name, sell_in, quality)
    super
    @type = "event"
  end

  def item_change
    @quality += 1 if @sell_in > 10
    @quality += 2 if @sell_in <= 10 && @sell_in > 5
    @quality += 3 if @sell_in <= 5 && @sell_in >= 0
    @quality = 0 if @sell_in < 0
  end

end
