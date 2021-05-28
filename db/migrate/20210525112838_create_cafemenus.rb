class CreateCafemenus < ActiveRecord::Migration[6.0]
  def change
    create_table :cafemenus do |t|
      t.string :name
      t.string :file
      t.integer :faktury_id
      t.integer :kontrahenci_id
      t.integer :user_id

      t.timestamps
    end
  end
end
