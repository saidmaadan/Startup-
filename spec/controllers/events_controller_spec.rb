require 'rails_helper'

feature "Viewing the list of events" do
  
  it "shows the events" do
    event1 = Event.create(event_title: "Building Your LinkedIn Profile",
                          location: "Capitol",
                          city: "Austin",
                          state: "Texas",
                          ticket: 20.00,
                          description: 'Learn tips from social media guru, Elizabeth Quintanilla, MBA, on how to improve your LinkedIn profile.  The session will be hands on so please bring your own device to access your profile during the session.',
                          starts: 10.days.from_now,
                          organizer_name: "Said Maadan")

    event2 = Event.create(event_title: "PAWS for Networking",
                          location: "Terrace Park",
                          city: "Suitland",
                          state: "Maryland",
                          ticket: 40.00,
                          description: 'Networking and Informational speakers for those of us who believe our pets are part of our family.    Appetizers, private room, networking, door prizes, cash bar and speakers',
                          starts: 15.days.from_now,
                          organizer_name: "David Riley")

    event3 = Event.create(event_title: "Social City Dash",
                          location: "Premon",
                          city: "San Ramon",
                          state: "California",
                          ticket: 10.00,
                          description: 'Teams of two or more (two adults maximum, kids are free, families are always welcome) will use social media to solve clues, complete tasks',
                          starts: 30.days.from_now,
                          organizer_name: "Stanley Awert")

    event4 = Event.create(event_title: "2014 Realty Round Up",
                          location: "Congress Avenue",
                          city: "Austin",
                          state: "Texas",
                          ticket: 9.99,
                          description: 'One Day, 3 Keynotes, 16 Workshops, 200 Exhibits, and 2000 Real Estate Professionals.  If you are looking to build your network then this is the place to do it.',
                          starts: 40.days.from_now,
                          organizer_name: "Ricky Steward")

    visit events_url

    expect(page).to have_text("4 Events")
    expect(page).to have_text(event1.event_title)
    expect(page).to have_text(event2.event_title)
    expect(page).to have_text(event3.event_title)
    expect(page).to have_text(event4.event_title)
    
    expect(page).to have_text(event1.location)
    expect(page).to have_text(event1.city)
    expect(page).to have_text(event1.state)
    expect(page).to have_text(event1.description[0..10])
    expect(page).to have_text(event1.starts)
    expect(page).to have_text("$20.00")
    expect(page).to have_text(event1.organizer_name)
  end
end

feature "Event links navigation" do

  it "has detail page link on listing page" do
    event = Event.create(event_attributes)
                          
    visit event_url(event)
        
    click_link "All Events"
    
    expect(current_path).to eq(events_path)
  end

 
  it "has detail page link on the listing page" do
    event = Event.create(event_attributes)
                          
    visit events_url
        
    click_link event.event_title
    
    expect(current_path).to eq(event_path(event))
  end
end

feature "Showing an individual event" do
  
  it "displays event's details" do
    event = Event.create(event_attributes(ticket: 20.00))
                          
    visit event_url(event)
    
    expect(page).to have_text(event.event_title)
    expect(page).to have_text(event.location)
    expect(page).to have_text(event.city)
    expect(page).to have_text(event.state)
    expect(page).to have_text(event.description)
    expect(page).to have_text(event.starts)
    expect(page).to have_text(event.organizer_name)
  end
end

feature "Event ticketing" do
   it "shows the price if the ticket is not $0" do
    event = Event.create(event_attributes(ticket: 20.00))
    
    visit event_url(event)
    
    expect(page).to have_text("$20.00")
  end
  
  it "Free if the ticket is $0" do
    event = Event.create(event_attributes(ticket: 0.00))
  
    visit event_url(event)
  
    expect(page).to have_text("Free")
  end 
end

feature "Edit event" do
  
  it "edit event and redirect to event updated details page" do
    event = Event.create(event_attributes)
    
    visit event_url(event)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_event_path(event))
    
    click_button "Update Event"
    
    expect(current_path).to eq(event_path(event))
  end 
end

feature "Add new event" do 
  it "create and save new event" do    
    visit events_url
    
    click_link 'Add New Event'
    
    expect(current_path).to eq(new_event_path)
  
    click_button 'Create Event'


    expect(current_path).to eq(events_path(@event))   
    
  end
end

feature "Destroy event" do 
  it "delete event and redirect to event listing page" do
    event = Event.create(event_attributes)
    
    visit event_path(event)
    
    click_link 'Delete'
    
    expect(current_path).to eq(events_path)
  end
end

