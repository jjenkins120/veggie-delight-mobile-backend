class CreateUsertags < ActiveRecord::Migration[6.0]
  def change
    create_table :usertags do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
