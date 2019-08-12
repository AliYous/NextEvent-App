class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances

    validates :start_date, presence: true
    validate :start_date_cannot_be_in_the_past
    validates :duration, presence: true
    validate :duration_validate
    validates :title, presence: true, length: {in: 5..140}
    validates :description, presence: true, length: {in: 20..1000}
    validates :price, inclusion: { in: 1..1000 }
    validates :location, presence: true




    def start_date_cannot_be_in_the_past
      if start_date.present? && start_date < Date.today
        errors.add(:start_date, "Start date is not valid (did you input a passed date?)")
      end
    end  
    def duration_validate
        if duration.present? && (duration%5 != 0 || duration <= 0)
            errors.add(:duration, "Duration must be a multiple of 5 and strictly higher than 0")
        end
    end

end
