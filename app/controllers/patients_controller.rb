class PatientsController < ApplicationController
  def index
    @patients = Patient.alpha_order
  end
end