class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.references :requestor, null: false, foreign_key: true
      t.references :receiver, null: false, foreign_key: true
      t.boolean :confirmed, default: :false

      t.timestamps
    end
  end
end
