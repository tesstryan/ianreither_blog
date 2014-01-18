class AddZipCodeToCharacteristic < ActiveRecord::Migration
  def change
    add_column :characteristics, :zip_code, :integer
  end
end
