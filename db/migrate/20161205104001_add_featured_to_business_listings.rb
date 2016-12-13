class AddFeaturedToBusinessListings < ActiveRecord::Migration[5.0]
  def change
    add_column :business_listings, :featured, :boolean
  end
end
