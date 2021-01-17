require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:creator) { Event.reflect_on_association(:creator).macro }
  let(:attendances) { Event.reflect_on_association(:attendances).macro }
  let(:attendee_users) { Event.reflect_on_association(:attendee_users).macro }

  it 'check correct association' do
    expect(creator).to eq(:belongs_to)
  end

  it 'check correct association' do
    expect(attendances).to eq(:has_many)
  end

  it 'check correct association' do
    expect(attendee_users).to eq(:has_many)
  end
end
