class CreateDocumentations < ActiveRecord::Migration[7.0]
  def change
    create_table :documentations do |t|
      t.string :type
      t.string :content

      t.timestamps
    end
  end
end
