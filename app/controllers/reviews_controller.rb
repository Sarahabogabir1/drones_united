	class ReviewsController < ApplicationController
before_action :authenticate_user!, :only => [:new, :create]
	
	def index
		#will render all reviews
		render "index"
	end

	def new
		#will create a new review
  		@review = Review.new
	end

	def create
		@location = Location.find(params[:location_id])
		@review = current_user.reviews.new(review_params)
		@review.location = @location
		if @review.save
			redirect_to @location, alert:"review created succesfully"
		else 
			redirect_to new_user_session_path, alert: "Error creating review"
		end 
	end
	
	def show
    	@users = User.find(params[:id])
	end

	private 

	def review_params
		params.require(:review).permit(:name, :rating, :comment)
	end

end

