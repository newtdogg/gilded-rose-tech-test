require "gilded_rose"
require "item"
require "legendary_item"

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

  describe "legendary items" do
    it "legendary items cannot lose value" do
      items = [LegendaryItem.new("Sulfuras, Hand of Ragnaros", 25, 25)]
      gildedrose = GildedRose.new(items)
      gildedrose.update_quality
      expect(gildedrose.items[0].quality).to eq(25)
    end

    it "legendary items do not have to be sold by a certain date" do
      items = [LegendaryItem.new("Sulfuras, Hand of Ragnaros", 25, 25)]
      gildedrose = GildedRose.new(items)
      gildedrose.update_quality
      expect(gildedrose.items[0].sell_in).to eq(25)
    end
  end

  describe "aged brie" do
    it "increases with quality over time" do
      items = [Item.new("Aged Brie", 10, 10)]
      gildedrose = GildedRose.new(items)
      gildedrose.update_quality
      expect(gildedrose.items[0].quality).to eq(11)
    end

    it "its quality increases by 2 after passing the sell by date" do
      items = [Item.new("Aged Brie", 0, 10)]
      gildedrose = GildedRose.new(items)
      gildedrose.update_quality
      expect(gildedrose.items[0].quality).to eq(12)
    end
  end

  describe "backstage passes" do
    it "increases in quality over time" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 10)]
      gildedrose = GildedRose.new(items)
      gildedrose.update_quality
      expect(gildedrose.items[0].quality).to eq(11)
    end

    it "increases in quality by two within 10 days of the concert" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 10, 10)]
      gildedrose = GildedRose.new(items)
      gildedrose.update_quality
      expect(gildedrose.items[0].quality).to eq(12)
    end

    it "increases in quality by three within 5 days of the concert" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 5, 10)]
      gildedrose = GildedRose.new(items)
      gildedrose.update_quality
      expect(gildedrose.items[0].quality).to eq(13)
    end

    it "increases in quality by three within 5 days of the concert" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 5, 10)]
      gildedrose = GildedRose.new(items)
      gildedrose.update_quality
      expect(gildedrose.items[0].quality).to eq(13)
    end

    it "loses all value the day after the concert" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 10)]
      gildedrose = GildedRose.new(items)
      gildedrose.update_quality
      expect(gildedrose.items[0].quality).to eq(0)
    end
  end

end
