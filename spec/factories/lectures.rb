FactoryBot.define do
  factory :lecture do
    cohort { nil }
    teacher { nil }
    title { "MyString" }
    week { 1 }
    date { "2026-02-22" }
    slide_count { 1 }
  end
end
