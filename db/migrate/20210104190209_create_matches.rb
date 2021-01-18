class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :requestor_id, null: false, foreign_key: true
      t.integer :receiver_id, null: false, foreign_key: true
      t.string :status
      t.boolean :first_message_sent, default: false 

      t.timestamps
    end
  end
end

