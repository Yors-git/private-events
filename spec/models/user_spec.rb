require 'rails_helper'

RSpec.describe 'Users', type: :model do
  let(:user) { User.create(username: 'rspec', email: 'rspec@test.com') }
  let(:created_events) { User.reflect_on_association(:created_events).macro }
  let(:attended_events) { User.reflect_on_association(:attended_events).macro }
  let(:attendances) { User.reflect_on_association(:attendances).macro }

  it 'checks if creating user is correct' do
    expect(user).to be_valid
  end

  it 'check correct association' do
    expect(created_events).to eq(:has_many)
  end

  it 'check correct association' do
    expect(attended_events).to eq(:has_many)
  end

  it 'check correct association' do
    expect(attendances).to eq(:has_many)
  end
end
