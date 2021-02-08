class CreatePropertyAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :property_attachments, id: :uuid do |t|
      t.references :property, null: false, foreign_key: true, type: :uuid
      t.string :avatar

      t.timestamps
    end
  end
end
