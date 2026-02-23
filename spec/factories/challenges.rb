FactoryBot.define do
  factory :challenge do
    track { nil }
    title { "MyString" }
    instructions { "MyText" }
    position { 1 }
  end
end
