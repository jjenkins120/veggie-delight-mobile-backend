class RemoveInterestedInFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :interested_in, :string
  end
end
