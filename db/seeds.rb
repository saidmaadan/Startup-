# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Startupp.create!([
	{
		title: "Job Board", description: "Online platform for both job-seekers and job-providers",
    website_url: 'http://job-inbox.com', founders: 'Said Maadan', contact_email: 'info@job-inbox.com', 
    contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'Easy Job Board',
    fb_url: 'https://facebook.com/job-inbox', twitter_url: 'https://twitter.com/job-inbox',
    linkedin_url:'https://linkedin.com/in/job-inbox'
    },
    {
    title: "AppCubator", description: "App development business network - aimed at providing the ability to find collaborators and volunteers for startup ideas.",
    website_url: 'http://app-cubator.com', founders: 'Said Maadan', contact_email: 'info@app-cubator.com', 
    contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'App development businee network',
    fb_url: 'https://facebook.com/app-cubator', twitter_url: 'https://twitter.com/app-cubator',
    linkedin_url:'https://linkedin.com/in/app-cubator'
    },
    {
    title: "Listers", description: "Lister is a community of real estate owners, agencies and renters that provides listings and search capabilities for apartments.",
    website_url: 'http://listers.pro', founders: 'Said Maadan', contact_email: 'info@listers.pro', 
    contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'Real Estate Portal',
    fb_url: 'https://facebook.com/listers', twitter_url: 'https://twitter.com/listers',
    linkedin_url:'https://linkedin.com/in/listers'
    },
    {
    title: "MasmaSpace", description: "Masmaspace is a news curation website, build on top of Wordpress content management system.",
    website_url: 'http://masmaspace.com', founders: 'Said Maadan', contact_email: 'info@masmaspace.com', 
    contact_address: '12800 Harrisglenn Drive Austin, TX', employees: 4, tagline: 'easy Job Board',
    fb_url: 'https://facebook.com/masmaspace', twitter_url: 'https://twitter.com/masmaspace',
    linkedin_url:'https://linkedin.com/in/masmaspace'
    }
	])	
