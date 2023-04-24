require 'rails_helper'

RSpec.describe " '/patients' Patient Index Page", type: :feature do
  before(:each) do
    test_data
  end

  describe "I see the names of all adult patients (age is greater than 18)," do
    it 'I see the names are in ascending alphabetical order (A - Z, you do not need to account for capitalization)' do
      visit patients_path

      expect(page).to have_content(@patient1.name)
      expect(page).to have_content(@patient2.name)
      expect(page).to have_content(@patient3.name)
      expect(page).to_not have_content(@patient4.name)

      expect(@patient1.name).to appear_before(@patient3.name)
      expect(@patient3.name).to appear_before(@patient2.name)
    end
  end
end