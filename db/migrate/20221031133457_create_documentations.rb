class CreateDocumentations < ActiveRecord::Migration[7.0]
  def change
    create_table :documentations do |t|
      t.string :title
      t.string :content
      t.string :img

      t.timestamps
    end
  end
end
