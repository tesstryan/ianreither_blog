class AddAngelListToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :angel_list, :string
  end
end
