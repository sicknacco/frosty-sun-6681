require 'rails_helper'

RSpec.describe Patient do
  before(:each) do
    test_data
  end

  it {should have_many :doctor_patients}
  it {should have_many(:doctors).through(:doctor_patients)}

  describe 'class methods' do
    it 'can list all adult patients' do
      expect(Patient.adult_names).to eq([@patient1, @patient2, @patient3])
    end

    it 'lists all patients in alpa order' do
      expect(Patient.alpha_order).to eq([@patient1, @patient3, @patient2])
    end
  end
end