class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.string :name
      t.integer :count
      t.integer :category_id

      t.timestamps
    end
  end
end
