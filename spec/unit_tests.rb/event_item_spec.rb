require "event_item"

describe EventItem do

  subject(:eventitem) { described_class.new("azeroth hearthstone finals tickets", 30, 10) }

  it "should know that the item type is event" do
    expect(eventitem.type).to eq("event")
  end
end
