FactoryBot.define do
  factory :flashcard do
    flashcard_deck { nil }
    question { "MyText" }
    answer { "MyText" }
  end
end
