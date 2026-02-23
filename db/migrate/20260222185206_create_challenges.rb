class CreateChallenges < ActiveRecord::Migration[8.1]
  def change
    create_table :challenges do |t|
      t.references :track, null: false, foreign_key: true
      t.string :title
      t.text :instructions
      t.integer :position

      t.timestamps
    end
  end
end
