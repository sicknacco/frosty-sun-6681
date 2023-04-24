class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.references :doctor, foreign_key: true
      t.string :name
      t.integer :age
    end
  end
end
