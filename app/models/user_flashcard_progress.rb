class UserFlashcardProgress < ApplicationRecord
  belongs_to :user
  belongs_to :flashcard_deck

  enum :status, { completed: 0, needs_attention: 1, locked: 2 }
end
