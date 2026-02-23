class CreateFlashcards < ActiveRecord::Migration[8.1]
  def change
    create_table :flashcards do |t|
      t.references :flashcard_deck, null: false, foreign_key: true
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
