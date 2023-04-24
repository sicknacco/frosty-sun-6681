class DoctorPatientsController < ApplicationController
  def destroy
    # require 'pry'; binding.pry
    doc_pat = DoctorPatient.find_by(doctor_id: params[:id], patient_id: params[:patient])
    doc_pat.destroy
    redirect_to doctor_path(params[:id])
  end
end