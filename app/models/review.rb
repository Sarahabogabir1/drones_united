class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :location
	validates_numericality_of :rating , greater_than_or_equal_to: 1, less_than_or_equal_to: 5
	validates :user, :location, presence: true

	delegate :name, to: :user, prefix: true
end
