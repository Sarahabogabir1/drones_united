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
		@review = Review.new(params[:review])
		if @review.save
			redirect_to @user, alert:"User created successfully"
		else 
			redirect_to new_user_session_path, alert: "Error creating user."
		end 
	end
	
	def show
    	@users = User.find(params[:id])
	end
end

