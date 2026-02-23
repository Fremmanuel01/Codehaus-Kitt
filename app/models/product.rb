class Product < ApplicationRecord
  belongs_to :cohort
  has_many :product_team_members, dependent: :destroy
  has_many :users, through: :product_team_members
end
