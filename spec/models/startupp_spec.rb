require 'rails_helper'

feature "Viewing an individual details page" do 
	it "show details page" do 
		startupp = Startupp.create(startupp_attributes)
		
		visit startupp_url(startupp)

		expect(page).to have_text(startupp.title)
		expect(page).to have_text(startupp.description)
		expect(page).to have_text(startupp.founders)
		expect(page).to have_text(startupp.founding_date)
		expect(page).to have_text(startupp.contact_address)
		expect(page).to have_text(startupp.contact_email)
		expect(page).to have_text(startupp.employees)
		expect(page).to have_text(startupp.fb_url)

	end
end

feature "Validations" do 
	it "requires a title" do
		startupp = Startupp.new(title: "")

		startupp.valid?

		expect(startupp.errors[:title].any?).to eq(true)
	end

	it "requires a description" do
		startupp = Startupp.new(description: "")

		startupp.valid?

		expect(startupp.errors[:description].any?).to eq(true)
	end

	it "requires a founders" do
		startupp = Startupp.new(founders: "")

		startupp.valid?

		expect(startupp.errors[:founders].any?).to eq(true)
	end

	it "requires a employees" do
		startupp = Startupp.new(employees: "")

		startupp.valid?

		expect(startupp.errors[:employees].any?).to eq(true)
	end

	it "requires a description to be more than 25 characters" do 
		startupp = Startupp.new(description: "X" * 25)

		startupp.valid?

		expect(startupp.errors[:description].any?).to eq(true)
	end

	it "does not update invalid startup post" do
  startupp = Startupp.create(startupp_attributes)
  
  visit edit_startupp_url(startupp)
  
  fill_in 'Title', with: " "
  
  click_button 'Update Startupp' 
      
  expect(page).to have_text('error')
	end

	it "does not save invalid the startup post" do
	  visit new_startupp_url
	  
	  expect { 
	    click_button 'Create Startupp' 
	  }.not_to change(Startupp, :count)
	  
	  expect(current_path).to eq(startupps_path)   
	  expect(page).to have_text('error')
	end
end