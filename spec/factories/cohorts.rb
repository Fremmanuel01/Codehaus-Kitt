FactoryBot.define do
  factory :cohort do
    name { "Cohort 123" }
    city { "London" }
    start_date { 1.week.ago }
    end_date { 8.weeks.from_now }
  end
end
