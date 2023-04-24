# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Hospital.destroy_all
  Doctor.destroy_all
  Patient.destroy_all
  PatientDoctor.destroy_all

  @hospital = Hospital.create!(name: "That Big One")

  @doc1 = @hospital.doctors.create!(name: "Dr. Faber", specialty: "Rheumatology", university: "U.O.I.")
  @doc2 = @hospital.doctors.create!(name: "New Guy", specialty: "Weird Stuff", university: "B.F.E.")

  @patient1 = Patient.create!(name: "Jim Jimson", age: 56)
  @patient2 = Patient.create!(name: "Tim Timerson", age: 83)
  @patient3 = Patient.create!(name: "John Johnson", age: 21)
  @patient4 = Patient.create!(name: "No Show", age: 11)

  PatientDoctor.create!(patient: @patient1, doctor: @doc1)
  PatientDoctor.create!(patient: @patient2, doctor: @doc1)
  PatientDoctor.create!(patient: @patient3, doctor: @doc1)