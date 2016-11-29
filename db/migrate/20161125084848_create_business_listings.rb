class CreateBusinessListings < ActiveRecord::Migration[5.0]
  def change
    create_table :business_listings do |t|
      t.integer :user_id
      t.string :title
      t.string :location
      t.string :revenue
      t.string :cash_flow
      t.text :business_description
      t.integer :property_size
      t.integer :years_estd
      t.string :property_type
      t.text :business_location
      t.text :premise_details
      t.text :competition
      t.text :expansion_potential
      t.integer :employees
      t.string :trading_hours
      t.text :support_training
      t.text :financing_available
      t.text :reason_for_selling
      t.timestamps
    end
    add_index :business_listings, :user_id
  end
end
