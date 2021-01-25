class RemoveHowFarFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :how_far, :integer
  end
end
