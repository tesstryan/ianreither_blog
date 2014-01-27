class AddQuoraToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :quora, :string
  end
end
