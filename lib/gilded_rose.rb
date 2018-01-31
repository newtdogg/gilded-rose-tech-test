class GildedRose

  attr_reader :items

  def initialize()
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def update_quality()
    @items.each do |item|
      item.item_change
      item.sell_in -= 1
    end
  end

end
