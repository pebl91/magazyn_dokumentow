class CreateKontrahencis < ActiveRecord::Migration[6.0]
  def change
    create_table :kontrahencis do |t|
      t.string :nazwa
      t.string :ulica
      t.string :kod_pocztowy
      t.string :miasto
      t.integer :NIP
      t.boolean :aktywna
      t.integer :faktury_id

      t.timestamps
    end
  end
end
