class CreateUserFlashcardProgresses < ActiveRecord::Migration[8.1]
  def change
    create_table :user_flashcard_progresses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :flashcard_deck, null: false, foreign_key: true
      t.integer :progress_percent
      t.integer :status

      t.timestamps
    end
  end
end
