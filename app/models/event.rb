class Event < ApplicationRecord
  has_many :attendances, foreign_key: :attended_event_id, class_name: 'Attendance'
  # has_many :attendee_users, through: :attendances, source: :attended_event_id
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id

  has_many :attendee_users, :through => :attendances, :source => :attended_event
end
