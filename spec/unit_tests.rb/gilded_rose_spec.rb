require "gilded_rose"
require "item"
require "legendary_item"

describe GildedRose do

  let(:item1) { double(:item1, :item_change => true) }
  subject(:gildedrose) { described_class.new }

  before(:each) do
    gildedrose.add_item(item1)
  end

  it "initializes with an item" do
    expect(gildedrose.items).to be_a(Array)
  end


  it "items date to sell is reduced by one per day" do
    allow(item1).to receive(:sell_in) { 4 }
    gildedrose.update_quality
    expect(gildedrose.items[0].sell_in).to eq(3)
  end

end
