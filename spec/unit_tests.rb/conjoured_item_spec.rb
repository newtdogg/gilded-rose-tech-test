require "conjoured_item"

describe ConjouredItem do

  subject(:conjoureditem) { described_class.new("Conjured Mana Cake", 30, 10) }

  it "should know that the item type is conjoured" do
    expect(conjoureditem.type).to eq("conjoured")
  end

  it "loses value twice as fast as a normal item" do
    conjoureditem.item_change
    expect(conjoureditem.quality).to eq(8)
  end

end
