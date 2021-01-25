class AddInterestedInAgeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :interested_in_age, :string
  end
end
