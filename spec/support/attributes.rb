def startupp_attributes(overrides= {})
	{
		title: "Job Board", description: "Online platform for both job-seekers and job-providers",
        website_url: 'http://job-inbox.com', founders: 'Said Maadan', contact_email: 'info@job-inbox.com', 
        contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'Easy Job Board',
        fb_url: 'https://facebook.com/job-inbox', twitter_url: 'https://twitter.com/job-inbox',
        linkedin_url:'https://linkedin.com/in/job-inbox'

	}.merge(overrides)
end

def review_attributes(overrides = {})
	{
		name: "Danny Glover",
		ratings: 6,
		comment: "I can wait to check on this"
	}.merge(overrides)
end
