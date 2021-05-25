class CreateFakturies < ActiveRecord::Migration[6.0]
  def change
    create_table :fakturies do |t|
      t.string :rodzaj_dokumentu
      t.string :numer_dokumentu
      t.date :data_wystawienia
      t.date :okres_od
      t.date :okres_do
      t.integer :kontrahenci_id
      t.integer :cafemenu_id

      t.timestamps
    end
  end
end
