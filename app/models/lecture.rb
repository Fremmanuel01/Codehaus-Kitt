class Lecture < ApplicationRecord
  belongs_to :cohort
  belongs_to :teacher, class_name: "User"
end
