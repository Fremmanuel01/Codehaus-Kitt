class CreateFeedbacks < ActiveRecord::Migration[8.1]
  def change
    create_table :feedbacks do |t|
      t.references :student, null: false, foreign_key: { to_table: :users }
      t.references :teacher, null: false, foreign_key: { to_table: :users }
      t.text :content
      t.boolean :pending

      t.timestamps
    end
  end
end
