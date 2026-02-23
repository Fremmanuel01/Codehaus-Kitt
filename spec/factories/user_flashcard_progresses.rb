FactoryBot.define do
  factory :user_flashcard_progress do
    user { nil }
    flashcard_deck { nil }
    progress_percent { 1 }
    status { 1 }
  end
end
