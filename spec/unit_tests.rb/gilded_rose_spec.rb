require "gilded_rose"
require "item"

describe GildedRose do

  items = [Item.new("Bread", 4, 10)]
  subject(:gildedrose) { described_class.new(items)}

  describe "initialize" do
    it "initializes with an item" do
      expect(gildedrose.items).to be_a(Array)
    end
  end

  describe "update_quality" do
    it "normal items degrade 1 point of quality per day" do
      gildedrose.update_quality
      expect(gildedrose.items[0].quality).to eq(9)
    end
  end

end
