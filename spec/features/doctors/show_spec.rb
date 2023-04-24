require 'rails_helper'

RSpec.describe " '/doctors/:id' Doctor Show Page", type: :feature do
  before(:each) do
    test_data
  end

  describe "When I visit a doctor's show page I see all of that doctor's information" do
    it 'shows doc name, specialty, university, hospital name, and patients names' do
      visit doctor_path(@doc1)
      
      expect(page).to have_content("Dr. Faber")
      expect(page).to have_content("Rheumatology")
      expect(page).to have_content("U.O.I.")

      expect(page).to have_content("That Big One")
      expect(page).to have_content(@patient1.name)
      expect(page).to have_content(@patient2.name)
      expect(page).to have_content(@patient3.name)
      expect(page).to_not have_content(@patient4.name)
    end
  end
end