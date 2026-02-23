class CreateEnrollments < ActiveRecord::Migration[8.1]
  def change
    create_table :enrollments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cohort, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
