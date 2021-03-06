class Listing < ActiveRecord::Base
	belongs_to :category
	belongs_to :subcategory

	# so geocoder gem knows which models to search in (for search box)
	geocoded_by :full_address
	after_validation :geocode

	# methods for geocode gem
	def full_address
		[city, state, zipcode].join(', ')
	end
	def self.search(params)
		listings = Listing.where(category_id: params[:category].to_i)
		listings = listings.where("title like ? or description like ?", params[:search], params[:search]) if params[:search].present?
		listings = listings.near(params[:location], 20) if params[:location].present?
		listings
	end
end
