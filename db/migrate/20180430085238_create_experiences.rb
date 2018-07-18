class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :company_name
      t.string :designation
      t.string :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
