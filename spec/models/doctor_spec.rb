require 'rails_helper'

RSpec.describe Doctor, type: :model do
  context 'validation test' do
    let(:doctor) { build(:doctor) }
    it 'ensures email presence' do
      doctor.email = nil
      expect(doctor.save).to eq(false)
    end

    it 'should save successfully' do
      expect(doctor.save).to eq(true)
    end
  end
end