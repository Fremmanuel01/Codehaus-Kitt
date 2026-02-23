FactoryBot.define do
  factory :feedback do
    student { nil }
    teacher { nil }
    content { "MyText" }
    pending { false }
  end
end
