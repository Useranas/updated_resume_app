class AddColumnInPages < ActiveRecord::Migration[5.1]
  def change
  	add_column :pages, :email, :string
  end
end
