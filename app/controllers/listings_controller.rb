class ListingsController < ApplicationController
	def new
		@listing = Listing.new
	end

	def create
		@listing = Listing.new(listing_params)
		@listing.save
		redirect_to root_path
	end

	def show
		@listing = Listing.find(params[:id])
	end

	# search method for geocoder search, references to the listing model
	def search
		@listing = Listing.search(params)
	end


	private
	def listing_params
		# params require our listing table, only permit ... parameters to be created 
		params.require(:listing).permit(:title, :description, :city, :state, :zipcode, :category_id, :subcategory_id)
	end


end