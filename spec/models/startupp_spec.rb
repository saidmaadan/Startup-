require 'rails_helper'

feature "Viewing an individual details page" do 
	it "show details page" do 
		startupp = Startupp.create(title: "Job Board", description: "Online platform for both job-seekers and job-providers",
			                        website_url: 'http://job-inbox.com', founders: 'Said Maadan', contact_email: 'info@job-inbox.com', 
			                        contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'Easy Job Board',
			                        fb_url: 'https://facebook.com/job-inbox', twitter_url: 'https://twitter.com/job-inbox',
			                        linkedin_url:'https://linkedin.com/in/job-inbox')

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
