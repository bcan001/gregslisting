# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# seed category data

community_category = Category.where(name: "community").first_or_create(name: "community")
personals_category = Category.where(name: "personals").first_or_create(name: "personals")
housing_category = Category.where(name: "housing").first_or_create(name: "housing")
forsale_category = Category.where(name: "for sale").first_or_create(name: "for sale")
jobs_category = Category.where(name: "jobs").first_or_create(name: "jobs")

# seed subcategory data

Subcategory.where(name: 'activities', category_id: community_category.id).first_or_create(name: 'activities', category_id: community_category.id)
Subcategory.where(name: 'artists', category_id: community_category.id).first_or_create(name: 'artists', category_id: community_category.id)
Subcategory.where(name: 'childcare', category_id: community_category.id).first_or_create(name: 'childcare', category_id: community_category.id)
Subcategory.where(name: 'classes', category_id: community_category.id).first_or_create(name: 'classes', category_id: community_category.id)
Subcategory.where(name: 'events', category_id: community_category.id).first_or_create(name: 'events', category_id: community_category.id)


Subcategory.where(name: 'strictly platonic', category_id: personals_category.id).first_or_create(name: 'strictly platonic', category_id: personals_category.id)
Subcategory.where(name: 'men seeking men', category_id: personals_category.id).first_or_create(name: 'men seeking men', category_id: personals_category.id)
Subcategory.where(name: 'men seeking women', category_id: personals_category.id).first_or_create(name: 'men seeking women', category_id: personals_category.id)
Subcategory.where(name: 'women seeking women', category_id: personals_category.id).first_or_create(name: 'women seeking women', category_id: personals_category.id)
Subcategory.where(name: 'women seeking men', category_id: personals_category.id).first_or_create(name: 'women seeking men', category_id: personals_category.id)


Subcategory.where(name: 'apt / housing', category_id: housing_category.id).first_or_create(name: 'apt / housing', category_id: housing_category.id)
Subcategory.where(name: 'housing swap', category_id: housing_category.id).first_or_create(name: 'housing swap', category_id: housing_category.id)
Subcategory.where(name: 'housing wanted', category_id: housing_category.id).first_or_create(name: 'housing wanted', category_id: housing_category.id)
Subcategory.where(name: 'office / commercial', category_id: housing_category.id).first_or_create(name: 'office / commercial', category_id: housing_category.id)
Subcategory.where(name: 'parking / storage', category_id: housing_category.id).first_or_create(name: 'parking / storage', category_id: housing_category.id)



Subcategory.where(name: 'computers', category_id: forsale_category.id).first_or_create(name: 'computers', category_id: forsale_category.id)
Subcategory.where(name: 'books', category_id: forsale_category.id).first_or_create(name: 'books', category_id: forsale_category.id)
Subcategory.where(name: 'furniture', category_id: forsale_category.id).first_or_create(name: 'furniture', category_id: forsale_category.id)
Subcategory.where(name: 'garage sale', category_id: forsale_category.id).first_or_create(name: 'garage sale', category_id: forsale_category.id)
Subcategory.where(name: 'motorcycles', category_id: forsale_category.id).first_or_create(name: 'motorcycles', category_id: forsale_category.id)



Subcategory.where(name: 'accounting + finance', category_id: jobs_category.id).first_or_create(name: 'accounting + finance', category_id: jobs_category.id)
Subcategory.where(name: 'biotech / science', category_id: jobs_category.id).first_or_create(name: 'biotech / science', category_id: jobs_category.id)
Subcategory.where(name: 'education', category_id: jobs_category.id).first_or_create(name: 'education', category_id: jobs_category.id)
Subcategory.where(name: 'manufacturing', category_id: jobs_category.id).first_or_create(name: 'manufacturing', category_id: jobs_category.id)
Subcategory.where(name: 'software', category_id: jobs_category.id).first_or_create(name: 'software', category_id: jobs_category.id)




