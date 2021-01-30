class AddInterestedInGenderToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :interested_in_gender, :hstore, default: [], null: false
  end
end
