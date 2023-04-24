require 'rails_helper'

RSpec.describe Doctor do
  before(:each) do
    test_data
  end

  it {should belong_to :hospital}
  it {should have_many :doctor_patients}
  it {should have_many(:patients).through(:doctor_patients)}

  describe 'model methods?' do
    it 'can determine what patients are under a doctors care' do
      expect(@doc1.doc_patients).to eq([@patient1, @patient2, @patient3])
      expect(@doc2.doc_patients).to eq([@patient1])
    end
  end
end
