class CreatePilgrims < ActiveRecord::Migration[5.2]
  def change
    create_table :pilgrims do |t|
      t.string :name
      t.string :phone
      t.string :type
      t.string :price
      t.string :sheep
      t.string :blood
      t.boolean :status
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
