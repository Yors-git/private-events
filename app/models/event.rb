class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :attendances, dependent: :destroy
  has_many :attendee_users, through: :attendances, source: :user

  scope :past, -> { where('date_of_event<?', Time.now) }
  scope :future, -> { where('date_of_event>?', Time.now) }
end
