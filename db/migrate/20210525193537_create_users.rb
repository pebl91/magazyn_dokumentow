class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :stanowisko
      t.integer :faktury_id
      t.integer :cafemenu_id
      t.integer :kontrahenci_id
      t.integer :user_id

      t.timestamps
    end
  end
end
