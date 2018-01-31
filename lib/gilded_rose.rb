class GildedRose

  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      if item.is_a? LegendaryItem
        item.legendary_change
      elsif item.is_a? MaturingItem
        item.mature_change
      elsif item.is_a? EventItem
        item.event_change
      elsif item.is_a? NormalItem
        item.normal_change
      elsif item.is_a? ConjouredItem
        item.conjoured_change
      end
    end
  end
end
