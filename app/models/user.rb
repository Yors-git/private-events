class User < ApplicationRecord
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event', dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :attended_events, through: :attendances, source: :event
end
