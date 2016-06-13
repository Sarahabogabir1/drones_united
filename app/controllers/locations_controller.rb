class LocationsController < ApplicationController
	
	def index 
		#retrieving from DB
		@locations = Location.all
	end 

	def show
		#render location 
		@location = Location.find(params[:id])	
		@locationreviews = @location.reviews
		if user_signed_in?
			@review = current_user.reviews.build(location:@location)
		end
	end 
end
