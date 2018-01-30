require "maturing_item"

describe MaturingItem do

  subject(:maturingitem) { described_class.new("Aged Brie", 0, 10) }

  it "should be a type of maturing item" do
    expect(maturingitem.type).to eq("maturing")
  end
end
