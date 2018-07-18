class AddFieldInAbout < ActiveRecord::Migration[5.1]
  def change
  	add_column   :abouts, :address, :string
  end
end
