require_relative "item"

class NormalItem < Item

  attr_reader :type

  def initialize(name, sell_in, quality)
    super
    @type = "normal"
  end

  def normal_change
    if @sell_in >= 0
      @quality -= 1
    else
      @quality -= 2
    end
    @sell_in -= 1
  end

end
