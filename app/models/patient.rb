class Patient < ApplicationRecord
  has_many :doctor_patients
  has_many :doctors, through: :doctor_patients

  def self.adult_names
    self.where('age > 18')
  end

  def self.alpha_order
    adult_names.order(name: :asc)
  end
end