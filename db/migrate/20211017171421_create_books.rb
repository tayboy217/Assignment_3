class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :name
      t.string :image_id
      t.text :self_introduction
      t.integer :user_id

      t.timestamps
    end
  end
end
