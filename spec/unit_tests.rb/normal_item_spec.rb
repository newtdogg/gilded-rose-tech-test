require "normal_item"

describe NormalItem do

  subject(:normalitem) { described_class.new("Bread", 0, 10) }

  it "should be a type of normal item" do
    expect(normalitem.type).to eq("normal")
  end
end
