class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.references :cohort, null: false, foreign_key: true
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
