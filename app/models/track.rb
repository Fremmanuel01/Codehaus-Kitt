class Track < ApplicationRecord
  has_many :challenges, -> { order(position: :asc) }, dependent: :destroy
end
