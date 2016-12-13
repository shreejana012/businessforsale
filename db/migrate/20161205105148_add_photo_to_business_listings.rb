class AddPhotoToBusinessListings < ActiveRecord::Migration[5.0]
  def change
    add_column :business_listings, :photo, :string
  end
end
