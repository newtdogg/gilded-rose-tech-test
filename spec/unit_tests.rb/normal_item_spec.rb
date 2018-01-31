require "normal_item"

describe NormalItem do

  subject(:normalitem) { described_class.new("Bread", 4, 10) }

  it "should be a type of normal item" do
    expect(normalitem.type).to eq("normal")
  end

  describe "update_quality for normal items" do
    it "items degrade 1 point of quality per day" do
      normalitem.item_change
      expect(normalitem.quality).to eq(9)
    end

    it "items should lose value twice as fast after their sell by date" do
      normalitem = NormalItem.new("Bread", -1, 10)
      normalitem.item_change
      expect(normalitem.quality).to eq(8)
    end
  end
end
