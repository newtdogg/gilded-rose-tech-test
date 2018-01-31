require "maturing_item"

describe MaturingItem do

  subject(:maturingitem) { described_class.new("Aged Wine", 0, 10) }

  it "should be a type of maturing item" do
    expect(maturingitem.type).to eq("maturing")
  end

  it "increases with quality over time" do
    maturingitem = MaturingItem.new("Aged Wine", 3, 10)
    maturingitem.item_change
    expect(maturingitem.quality).to eq(11)
  end

  it "its quality increases by 2 after passing the sell by date" do
    maturingitem.item_change
    expect(maturingitem.quality).to eq(12)
  end
end
