class Cohort < ApplicationRecord
  has_many :users, dependent: :nullify
  has_many :lectures, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :class_sessions, dependent: :destroy
  has_many :enrollments, dependent: :destroy
end
