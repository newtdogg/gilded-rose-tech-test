require_relative "item"

class EventItem < Item

  attr_reader :type

  def initialize(name, sell_in, quality)
    super
    @type = "event"
  end

  def item_change
    if @sell_in > 10
      @quality += 1
    elsif @sell_in <= 10 && @sell_in > 5
      @quality += 2
    elsif @sell_in <= 5 && @sell_in >= 0
      @quality += 3
    elsif @sell_in < 0
      @quality = 0
    end
    @sell_in -= 1
  end

end
