class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :requestor, null: false, foreign_key: true
      t.references :receiver, null: false, foreign_key: true
      t.string :status
      t.boolean :first_message_sent

      t.timestamps
    end
  end
end
