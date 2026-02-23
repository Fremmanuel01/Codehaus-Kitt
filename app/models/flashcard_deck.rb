class FlashcardDeck < ApplicationRecord
  has_many :flashcards, dependent: :destroy
  has_many :user_flashcard_progresses, dependent: :destroy
end
