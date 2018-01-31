require "legendary_item"

describe LegendaryItem do

  subject(:legendaryitem) { described_class.new("Ashbringer", 25, 25) }

  it "should know that the item type is legendary" do
    expect(legendaryitem.type).to eq("legendary")
  end

  it "legendary items cannot lose value" do
    legendaryitem.item_change
    expect(legendaryitem.quality).to eq(25)
  end

  it "legendary items do not have to be sold by a certain date" do
    legendaryitem.item_change
    expect(legendaryitem.sell_in).to eq(25)
  end

end
