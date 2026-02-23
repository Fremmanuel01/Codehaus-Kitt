FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password { "password123" }
    first_name { "John" }
    last_name { "Doe" }
    role { "student" }

    trait :student do
      role { "student" }
    end

    trait :instructor do
      role { "instructor" }
    end

    trait :admin do
      role { "admin" }
    end
  end
end
