class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :cohort, optional: true

  enum :role, { student: 0, instructor: 1, admin: 2 }

  has_many :feedbacks, foreign_key: :student_id, dependent: :destroy
  has_many :received_feedbacks, class_name: "Feedback", foreign_key: :teacher_id, dependent: :destroy
  has_many :user_flashcard_progresses, dependent: :destroy
  has_many :product_team_members, dependent: :destroy
  has_many :products, through: :product_team_members

  has_many :enrollments, dependent: :destroy
  has_many :submissions, dependent: :destroy
  has_many :attendances, dependent: :destroy

  validates :first_name, :last_name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [ :google_oauth2 ]

  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      # user.avatar_url = auth.info.image # optional
    end
  end
end
