require 'rails_helper'

RSpec.describe Attendance, type: :model do
  let(:user) { Attendance.reflect_on_association(:user).macro }
  let(:event) { Attendance.reflect_on_association(:event).macro }

  it 'check correct association' do
    expect(user).to eq(:belongs_to)
  end

  it 'check correct association' do
    expect(event).to eq(:belongs_to)
  end
end
