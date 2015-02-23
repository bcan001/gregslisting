class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :category_id
      t.integer :subcategory_id

      t.timestamps null: false
    end
  end
end
