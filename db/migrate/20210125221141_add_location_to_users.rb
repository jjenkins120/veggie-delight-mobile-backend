class AddLocationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :location, :text
  end
end
