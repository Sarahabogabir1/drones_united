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
	end

end
