FactoryBot.define do
  factory :class_session do
    cohort { nil }
    date { "2026-02-22" }
    starts_at { "2026-02-22 20:38:35" }
    ends_at { "2026-02-22 20:38:35" }
    late_after_minutes { 1 }
  end
end
