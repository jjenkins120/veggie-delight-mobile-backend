class AddLocationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :location, :integer
  end
end
