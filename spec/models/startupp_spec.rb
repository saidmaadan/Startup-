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
