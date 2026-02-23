class CreateClassSessions < ActiveRecord::Migration[8.1]
  def change
    create_table :class_sessions do |t|
      t.references :cohort, null: false, foreign_key: true
      t.date :date
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :late_after_minutes

      t.timestamps
    end
  end
end
