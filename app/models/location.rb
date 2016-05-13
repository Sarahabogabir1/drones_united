class Location < ActiveRecord::Base 
	belongs_to :user
	has_many :reviews
	
	def level
		if user_level == 1 
			"beginner"
		elsif user_level == 2
			"intermediate"
		else
			"advanced"
		end 
	end
end
