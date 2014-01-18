class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :twitter
      t.string :linkedin
    end
  end
end
