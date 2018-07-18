class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :unaversity_name
      t.string :qualified_degree
      t.string :subject
      t.string :marks

      t.timestamps
    end
  end
end
