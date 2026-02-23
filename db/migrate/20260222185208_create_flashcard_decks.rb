class CreateFlashcardDecks < ActiveRecord::Migration[8.1]
  def change
    create_table :flashcard_decks do |t|
      t.string :title
      t.string :section
      t.integer :cards_count

      t.timestamps
    end
  end
end
