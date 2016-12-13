class RemoveFeaturesFromBusinessListings < ActiveRecord::Migration[5.0]
  def change
    remove_column :business_listings, :features, :string
  end
end
