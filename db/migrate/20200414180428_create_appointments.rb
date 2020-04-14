class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.belongs_toctor :doctor
      t.belongs_to :patient, foreign_key: true

      t.timestamps
    end
  end
end
