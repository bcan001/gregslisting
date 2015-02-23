class SubcategoriesController < ApplicationController
	def show
		# we are in the SUBCATEGORIES controller, so use the params to find the associated model based on the attributes of the subcategory model (use find method)
		@category = Category.find(params[:category_id])
		@subcategory = Subcategory.find(params[:id])
		# listings belong to SUBCATEGORIES, so we need to find listings with subcategory_id's that match the subcategory id primary key
		@listings = Listing.where(subcategory_id: params[:id])

	end

	# method to show only available subcategories for a selected category on the new listings form, uses javascript
	# see routes
	def find_by_category
		category = Category.find(params[:category_id])
		subcategories = category.subcategories.find_all
		render json: { subcategories: subcategories }
	end

end