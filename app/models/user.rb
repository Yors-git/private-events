class User < ApplicationRecord
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
  has_many :attended_events, through: :attendance
  has_many :attendances, foreign_key: :attendee_usr_id

  # has_many :attended_events, through: :attendance
  # has_many :attendances, foreign_key: :attended_user_id, class_name: 'Attendance'
  # has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
end
