class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties, id: :uuid do |t|
      t.string :owner, null: false
      t.string :address, null: false
      t.integer :sqmt
      t.decimal :price
      t.string :type
      t.jsonb :additional_fields, default: {}

      t.timestamps
    end
  end
end
