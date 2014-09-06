require 'rails_helper'

#RSpec.describe StartupsController, :type => :controller do

	feature "Viewing list of all startup" do
		it "show all startup" do 
			startup1 = Startupp.create(title: "Job Board", description: "Online platform for both job-seekers and job-providers",
				                        website_url: 'http://job-inbox.com', founders: 'Said Maadan', contact_email: 'info@job-inbox.com', 
				                        contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'Easy Job Board',
				                        fb_url: 'https://facebook.com/job-inbox', twitter_url: 'https://twitter.com/job-inbox',
				                        linkedin_url:'https://linkedin.com/in/job-inbox')
			startup2 = Startupp.create(title: "AppCubator", description: "App development business network - aimed at providing the ability to find collaborators and volunteers for startup ideas.",
				                        website_url: 'http://app-cubator.com', founders: 'Said Maadan', contact_email: 'info@app-cubator.com', 
				                        contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'App development businee network',
				                        fb_url: 'https://facebook.com/app-cubator', twitter_url: 'https://twitter.com/app-cubator',
				                        linkedin_url:'https://linkedin.com/in/app-cubator')
			startup3 = Startupp.create(title: "Listers", description: "Lister is a community of real estate owners, agencies and renters that provides listings and search capabilities for apartments.",
				                        website_url: 'http://listers.pro', founders: 'Said Maadan', contact_email: 'info@listers.pro', 
				                        contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'Real Estate Portal',
				                        fb_url: 'https://facebook.com/listers', twitter_url: 'https://twitter.com/listers',
				                        linkedin_url:'https://linkedin.com/in/listers')
			startup4 = Startupp.create(title: "MasmaSpace", description: "Masmaspace is a news curation website, build on top of Wordpress content management system.",
				                        website_url: 'http://masmaspace.com', founders: 'Said Maadan', contact_email: 'info@masmaspace.com', 
				                        contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'easy Job Board',
				                        fb_url: 'https://facebook.com/masmaspace', twitter_url: 'https://twitter.com/masmaspace',
				                        linkedin_url:'https://linkedin.com/in/masmaspace')

			visit startupps_url
			
			expect(page).to have_text("4 Startupps")
			expect(page).to have_text(startup1.title)
			expect(page).to have_text(startup2.title)
			expect(page).to have_text(startup3.title)
			expect(page).to have_text(startup4.title)
		end
	end

	feature "Displaying link on detail page back to listing page" do 
	it "show navigation from detail page to listing page" do 
		startupp = Startupp.create(startupp_attributes)

		visit startupp_url(startupp)

		click_link 'All Startupps'

		expect(current_path).to eq(startupps_path)
		

	end
end

feature "Displaying link on listing page to the detail page" do 
	it "show navigation from listing page to detail page" do 
		startupp = Startupp.create(startupp_attributes)

		visit startupps_url

		click_link startupp.title

		expect(current_path).to eq(startupp_path(startupp))
		

	end
end

feature "Edit individual startup listing" do 
	it "edit and display the edited startup details" do
		startupp = Startupp.create(startupp_attributes)

		visit startupp_url(startupp)

		click_link "Edit"

		expect(current_path).to eq(edit_startupp_path(startupp))

		expect(find_field('Title').value).to eq(startupp.title)

	end
end

feature "Submit new Startup" do 
	it "create, save new startup and display details" do

		visit startupps_url

		click_link "Submit Startup"

		expect(current_path).to eq(new_startupp_path)

		# click_button "Create Startupp"

		#  expect(current_path).to eq(startupp_url)
  end
end

feature "Delete Startup post" do
	it "delete a startup post and redirect to listing page" do
		startupp = Startupp.create(startupp_attributes)

		visit startupp_path(startupp)

		click_link "Delete"

		expect(current_path).to eq(startupps_path)
		expect(page).not_to have_text(startupp.title)
	end

	it "has many reviews" do
  startupp = Startupp.new(startupp_attributes)

  review1 = startupp.reviews.new(review_attributes)
  review2 = startupp.reviews.new(review_attributes)

  expect(startupp.reviews).to include(review1)
  expect(startupp.reviews).to include(review2)
end

it "removess related reviews" do
  startupp = Startupp.create(startupp_attributes)

  startupp.reviews.create(review_attributes)

  expect { 
    startupp.destroy
  }.to change(Review, :count).by(-1)
end
end

# end
