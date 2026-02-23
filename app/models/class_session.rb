class ClassSession < ApplicationRecord
  belongs_to :cohort
  has_many :attendances, dependent: :destroy

  def status
    now = Time.current
    if starts_at && ends_at
      if now < starts_at
        "scheduled"
      elsif now > ends_at
        "closed"
      else
        "open"
      end
    else
      "inactive"
    end
  end

  def name
    date&.strftime("%A, %B %d") || "Daily Session"
  end
end
