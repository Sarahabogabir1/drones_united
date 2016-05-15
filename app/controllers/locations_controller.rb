class LocationsController < ApplicationController
	# has many :categories
	
	def index #to display all locations
		@locations = Location.all
	end 

	def show
		#render location 
		@location = Location.find(params[:id])	
		@locationreviews = @location.reviews
		@review= Review.new
		if current_user.reviews.find_by(location_id: params[:id])
			@review = current_user.reviews.find_by(location_id: params[:id])
		end
	end

end
