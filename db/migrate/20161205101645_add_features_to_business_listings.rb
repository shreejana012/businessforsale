class AddFeaturesToBusinessListings < ActiveRecord::Migration[5.0]
  def change
    add_column :business_listings, :features, :string
  end
end
