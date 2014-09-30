# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.create!([
  { event_title: "Building Your LinkedIn Profile",
    location: "Capitol",
    city: "Austin",
    state: "Texas",
    ticket: 20.00,
    description: 'Learn tips from social media guru, Elizabeth Quintanilla, MBA, on how to improve your LinkedIn profile.  The session will be hands on so please bring your own device to access your profile during the session.',
    starts: 10.days.from_now,
    organizer_name: "Said Maadan"
    },
    {event_title: "PAWS for Networking",
    location: "Terrace Park",
    city: "Suitland",
    state: "Maryland",
    ticket: 40.00,
    description: 'Networking and Informational speakers for those of us who believe our pets are part of our family.    Appetizers, private room, networking, door prizes, cash bar and speakers',
    starts: 15.days.from_now,
    organizer_name: "David Riley"
    },
    {
    event_title: "Social City Dash",
    location: "Premon",
    city: "San Ramon",
    state: "California",
    ticket: 10.00,
    description: 'Teams of two or more (two adults maximum, kids are free, families are always welcome) will use social media to solve clues, complete tasks',
    starts: 30.days.from_now,
    organizer_name: "Stanley Awert"
      },
    {event_title: "2014 Realty Round Up",
    location: "Congress Avenue",
    city: "Austin",
    state: "Texas",
    ticket: 9.99,
    description: 'One Day, 3 Keynotes, 16 Workshops, 200 Exhibits, and 2000 Real Estate Professionals.  If you are looking to build your network then this is the place to do it.',
    starts: 40.days.from_now,
    organizer_name: "Ricky Steward"}
    ])
# Startupp.create!([
# 	{
# 		title: "Job Board", description: "Online platform for both job-seekers and job-providers",
#     website_url: 'http://job-inbox.com', founders: 'Said Maadan', contact_email: 'info@job-inbox.com', 
#     contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'Easy Job Board',
#     fb_url: 'https://facebook.com/job-inbox', twitter_url: 'https://twitter.com/job-inbox',
#     linkedin_url:'https://linkedin.com/in/job-inbox'
#     },
#     {
#     title: "AppCubator", description: "App development business network - aimed at providing the ability to find collaborators and volunteers for startup ideas.",
#     website_url: 'http://app-cubator.com', founders: 'Said Maadan', contact_email: 'info@app-cubator.com', 
#     contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'App development businee network',
#     fb_url: 'https://facebook.com/app-cubator', twitter_url: 'https://twitter.com/app-cubator',
#     linkedin_url:'https://linkedin.com/in/app-cubator'
#     },
#     {
#     title: "Listers", description: "Lister is a community of real estate owners, agencies and renters that provides listings and search capabilities for apartments.",
#     website_url: 'http://listers.pro', founders: 'Said Maadan', contact_email: 'info@listers.pro', 
#     contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'Real Estate Portal',
#     fb_url: 'https://facebook.com/listers', twitter_url: 'https://twitter.com/listers',
#     linkedin_url:'https://linkedin.com/in/listers'
#     },
#     {
#     title: "MasmaSpace", description: "Masmaspace is a news curation website, build on top of Wordpress content management system.",
#     website_url: 'http://masmaspace.com', founders: 'Said Maadan', contact_email: 'info@masmaspace.com', 
#     contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'easy Job Board',
#     fb_url: 'https://facebook.com/masmaspace', twitter_url: 'https://twitter.com/masmaspace',
#     linkedin_url:'https://linkedin.com/in/masmaspace'
#     }
# 	])	
