class AddColumnApproveToBusinessListings < ActiveRecord::Migration[5.0]
  def change
    add_column :business_listings, :approve, :boolean, default: false
  end
end
