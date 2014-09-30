require 'rails_helper'

feature "event ticket" do
  it "free if the ticket is $0" do
    event = Event.new(ticket: 0)
    
    expect(event.free?).to eq(true)
  end
  
  it "is not free if the price is not $0" do
    event = Event.new(ticket: 20.00)
    
    expect(event.free?).to eq(false)
  end

   it "free if the price is blank" do
    event = Event.new(ticket: nil)
    
    expect(event.free?).to eq(true)
  end

  it "requires a Event title" do
    event = Event.new(event_title: '')
    
    expect(event.valid?).to eq false
    expect(event.errors[:event_title].any?).to eq true
  end
  
  it "requires a description" do
    event = Event.new(description: nil)
    
    expect(event.valid?).to eq false
    expect(event.errors[:description].any?).to eq true
  end
  
  it "requires a location" do
    event = Event.new(location: nil)
    
    expect(event.valid?).to eq false
    expect(event.errors[:location].any?).to eq true
  end
  
  it "has minimum of 26 characters" do
    event = Event.new(description: " " * 25)
    
    expect(event.valid?).to eq false
    expect(event.errors[:description].any?).to  eq true
  end
end