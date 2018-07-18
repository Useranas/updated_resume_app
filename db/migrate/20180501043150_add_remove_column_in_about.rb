class AddRemoveColumnInAbout < ActiveRecord::Migration[5.1]
  def change
  	remove_column :abouts, :name, :string
  	add_column   :abouts, :first_name, :string
  	add_column   :abouts, :last_name, :string
  end
end
