class CreateAnalytics < ActiveRecord::Migration[7.0]
  def change
    create_table :analytics do |t|
      t.integer :visited

      t.timestamps
    end
  end
end
