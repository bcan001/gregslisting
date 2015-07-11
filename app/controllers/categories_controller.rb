class CategoriesController < ApplicationController
	def index
		@categories = Category.all

		@community = @categories[0]
		@personals = @categories[1]
		@housing = @categories[2]
		@forsale = @categories[3]
		@jobs = @categories[4]

		@new_listings = Listing.order("id DESC").limit(10)
	end

	def show
		# show every listing in each category
		@listings = Listing.where(category_id: params[:id])
	end

end