class ReviewsController < ApplicationController
	before_action :set_startupp

	def index
		@reviews = @startupp.reviews
	end

	def new
		@review = @startupp.reviews.new
	end

	def create	
		@review = @startupp.reviews.new(review_params)
		if @review.save
			redirect_to startupp_reviews_path(@startupp), notice: "Thanks for your review"
		else
			render :new
		end
	end

	def review_params
		params.require(:review).permit(:name, :comment, :ratings)
	end

	def set_startupp
		@startupp = Startupp.find(params[:startupp_id])
	end

end
