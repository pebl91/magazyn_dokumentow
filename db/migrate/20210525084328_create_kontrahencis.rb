class CreateKontrahencis < ActiveRecord::Migration[6.0]
  def change
    create_table :kontrahencis do |t|
      t.string :nazwa
      t.string :ulica
      t.string :kod_pocztowy
      t.string :miasto
      t.integer :faktury_id
      t.integer :user_id
      t.integer :cafemenu_id
      t.timestamps
    end
  end
end
