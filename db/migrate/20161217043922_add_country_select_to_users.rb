class AddCountrySelectToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :country_select, :string
  end
end
