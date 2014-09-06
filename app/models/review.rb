class Review < ActiveRecord::Base

	validates :name, presence: true
	validates :comment, length: { minimum: 3 }

	RATINGS = [1, 2, 3, 4, 5, 6, 7, 8, 9]

	validates :ratings, inclusion: { 
	  in: RATINGS,
	  message: "rate between 1 to 9"
	}

  belongs_to :startupp


end
