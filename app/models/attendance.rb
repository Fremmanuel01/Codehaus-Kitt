class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :class_session
end
