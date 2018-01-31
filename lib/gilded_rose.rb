class GildedRose

  attr_reader :items

  def initialize(items)
    @items = items
  end

  # def add_item(item)
  #   @items.push(item)
  # end

  def update_quality()
    @items.each do |item|
      item.item_change
    end
  end
end
