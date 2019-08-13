class Attendance < ApplicationRecord
    after_create :attend_event_send

    def attend_event_send
        UserMailer.attend_event_email(User.find(self.user_id).email).deliver_now
    end

    belongs_to :event
    belongs_to :user

end
