class CreateAddAgeToStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :add_age_to_students do |t|
      
      t.timestamps
    end
  end
end
