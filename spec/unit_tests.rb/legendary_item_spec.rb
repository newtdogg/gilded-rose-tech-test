require "legendary_item"

describe LegendaryItem do

  subject(:legendaryitem) { described_class.new("Ashbringer", 30, 10) }

  it "should know that the item type is legendary" do
    expect(legendaryitem.type).to eq("legendary")
  end

end
