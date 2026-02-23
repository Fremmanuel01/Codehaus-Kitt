FactoryBot.define do
  factory :submission do
    user { nil }
    challenge { nil }
    link_url { "MyString" }
    notes { "MyText" }
    feedback { "MyText" }
    status { "MyString" }
  end
end
