class CreateKontrahencis < ActiveRecord::Migration[6.0]
  def change
    create_table :kontrahencis do |t|
      t.string :nazwa
      t.string :ulica
      t.string :kod_pocztowy
      t.string :miasto
      t.integer :nip
      t.boolean :aktywna

      t.timestamps
    end
  end
end
