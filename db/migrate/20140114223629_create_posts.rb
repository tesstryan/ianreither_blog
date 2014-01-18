class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :header
      t.string :sub_header
      t.string :date
      t.text :content
    end
  end
end
