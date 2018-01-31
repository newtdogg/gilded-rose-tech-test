require "event_item"

describe EventItem do

  subject(:eventitem) { described_class.new("azeroth hearthstone finals tickets", 30, 10) }

  it "should know that the item type is event" do
    expect(eventitem.type).to eq("event")
  end

  it "increases in quality over time" do
    eventitem.item_change
    expect(eventitem.quality).to eq(11)
  end

  it "increases in quality by two within 10 days of the concert" do
    eventitem = EventItem.new("Cool gig", 7, 10)
    eventitem.item_change
    expect(eventitem.quality).to eq(12)
  end

  it "increases in quality by three within 5 days of the concert" do
    eventitem = EventItem.new("Cool gig", 4, 10)
    eventitem.item_change
    expect(eventitem.quality).to eq(13)
  end

  it "loses all value the day after the concert" do
    eventitem = EventItem.new("Cool gig", -1, 10)
    eventitem.item_change
    expect(eventitem.quality).to eq(0)
  end
end
