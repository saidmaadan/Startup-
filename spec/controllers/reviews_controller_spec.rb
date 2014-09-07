require 'rails_helper'

feature "Review" do 
	it "belongs to a startup post" do
		startupp = Startupp.create(startupp_attributes)

		review = startupp.reviews.new(review_attributes)

		expect(review.startupp).to eq(startupp)
  end

  it "has valid attributes" do
  	review = Review.new(review_attributes)

  	expect(review.valid?).to eq(true) 
  end

  it "requires a name" do 
  	review = Review.new(name: "")

  	review.valid?

  	expect(review.errors[:name].any?).to eq(true)
  end

  it "requires a comment" do 
  	review = Review.new(comment: "")

  	review.valid?

  	expect(review.errors[:comment].any?).to eq(true)
  end

  it "has comment with minimum of two letters" do
    review = Review.new(comment: "X" * 2)

    review.valid?

    expect(review.errors[:comment].any?).to eq(true)
  end

  it "has rating values of 1 to 9" do
    ratings = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    ratings.each do |r|
      review = Review.new(ratings: r)

      review.valid?

      expect(review.errors[:ratings].any?).to eq(false)
    end
  end

  it "rejects invalid rating values" do
    ratings = [-1]
    ratings.each do |r|
      review = Review.new(ratings: r)

      review.valid?

      expect(review.errors[:ratings].any?).to eq(true)
      expect(review.errors[:ratings].first).to eq("rate between 1 to 9")
    end
  end

  it "shows indifidual startup reviews" do
    startupp1 = Startupp.create(startupp_attributes(title: "Job Board"))
    review1 = startupp1.reviews.create(review_attributes(name: "Danny Glover"))
    
    visit startupp_reviews_url(startupp1)
        
    expect(page).to have_text(review1.name)
  end
end

feature "Create a new review" do 
  it "saves the review" do    
    startupp = Startupp.create(startupp_attributes)

    visit startupp_url(startupp)
    
    click_link 'Write Review'
    
    expect(current_path).to eq(new_startupp_review_path(startupp))
    
    fill_in "Name", with: "Danny Glover"
    choose "review_ratings_3"
    fill_in "Comment", with: "I can wait to check on this"
            
    click_button 'Post Review'
  
    expect(current_path).to eq(startupp_reviews_path(startupp))
  end
  
  it "reject invalid review" do
    startupp = Startupp.create(startupp_attributes)
    
    visit new_startupp_review_url(startupp)
    
    expect { 
      click_button 'Post Review' 
    }.not_to change(Review, :count)
        
    expect(page).to have_text('error')
  end
end


