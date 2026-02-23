class CreateLectures < ActiveRecord::Migration[8.1]
  def change
    create_table :lectures do |t|
      t.references :cohort, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: { to_table: :users }
      t.string :title
      t.integer :week
      t.date :date
      t.integer :slide_count

      t.timestamps
    end
  end
end
