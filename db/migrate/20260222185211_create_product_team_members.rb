class CreateProductTeamMembers < ActiveRecord::Migration[8.1]
  def change
    create_table :product_team_members do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
