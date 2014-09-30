class ReviewsController < ApplicationController

	def create
	  @review = Review.new(review_params)
	  @review.startupp_id = params[:startupp_id]

	  @review.save

	  redirect_to startupp_path(@review.startupp)
	end

	def review_params
		params.require(:review).permit(:name, :comment, :ratings)
	end

		# def index
	# 	@reviews = @startupp.reviews
	# end

	# def new
	# 	@review = @startupp.reviews.new
	# end

	# def create	
	# 	@review = @startupp.reviews.new(review_params)
	# 	if @review.save
	# 		redirect_to startupp_reviews_path(@startupp), notice: "Thanks for your review"
	# 	else
	# 		render :new
	# 	end
	# end
end
