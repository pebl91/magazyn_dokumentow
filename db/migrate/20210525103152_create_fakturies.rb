class CreateFakturies < ActiveRecord::Migration[6.0]
  def change
    create_table :fakturies do |t|
      t.string :rodzaj_dokumentu
      t.text :opis
      t.string :numer_dokumentu
      t.string :data_wystawienia
      t.string :okres_od
      t.string :okres_do
      t.integer :kontrahenci_id
      t.integer :cafemenu_id

      t.timestamps
    end
  end
end
