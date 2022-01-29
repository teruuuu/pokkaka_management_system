class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name, null: false
      t.date :birthday, null: false
      t.string :gender, null: false
      t.string :address, null: false
      t.string :degree_of_care, null: false
      t.string :key_person, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
