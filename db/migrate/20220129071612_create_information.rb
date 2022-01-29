class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.text :comment, null: false
      t.references :user, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
