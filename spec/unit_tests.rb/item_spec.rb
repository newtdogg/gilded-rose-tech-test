require 'item'

describe Item do

  subject(:item) { described_class.new("milk", 10, 5) }

  describe "initialize" do
    it "should have a name" do
      expect(item.name).to eq("milk")
    end

    it "should have a sell by date" do
      expect(item.sell_in).to eq(10)
    end

    it "should have a quality value" do
      expect(item.quality).to eq(5)
    end
  end

  describe "to_s" do
    it "should convert the item to a string" do
      expect(item.to_s).to eq("milk, 10, 5")
    end
  end
end
