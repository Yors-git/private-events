class Attendance < ApplicationRecord
  belongs_to :attended_event, class_name: 'Event'
  belongs_to :attendee_users, class_name: 'User'
end
