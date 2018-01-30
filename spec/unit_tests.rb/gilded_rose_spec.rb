require "gilded_rose"
require "item"

describe GildedRose do

  describe "initialize" do
    it "initializes with an item" do
      items = [Item.new("Bread", 4, 10)]
      gildedrose = GildedRose.new(items)
      expect(gildedrose.items).to be_a(Array)
    end
  end

  describe "update_quality for normal items" do
    it "items degrade 1 point of quality per day" do
      items = [Item.new("Bread", 4, 10)]
      gildedrose = GildedRose.new(items)
      gildedrose.update_quality
      expect(gildedrose.items[0].quality).to eq(9)
    end

    it "items date to sell is reduced by one per day" do
      items = [Item.new("Bread", 4, 10)]
      gildedrose = GildedRose.new(items)
      gildedrose.update_quality
      expect(gildedrose.items[0].sell_in).to eq(3)
    end

    it "items should lose value twice as fast after their sell by date" do
      items = [Item.new("Bread", 0, 10)]
      gildedrose = GildedRose.new(items)
      gildedrose.update_quality
      expect(gildedrose.items[0].quality).to eq(8)
    end
  end

end
