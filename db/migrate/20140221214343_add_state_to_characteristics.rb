class AddStateToCharacteristics < ActiveRecord::Migration
  def change
  	add_column :characteristics, :state, :string
  	add_column :characteristics, :city, :string
  	remove_column :characteristics, :location, :string
  end
end
