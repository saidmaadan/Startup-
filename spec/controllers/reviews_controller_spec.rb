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
end

