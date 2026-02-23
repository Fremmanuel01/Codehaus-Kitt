class Challenge < ApplicationRecord
  belongs_to :track
  has_many :submissions, dependent: :destroy
end
