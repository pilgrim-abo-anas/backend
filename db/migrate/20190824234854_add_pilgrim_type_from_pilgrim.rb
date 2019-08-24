class AddPilgrimTypeFromPilgrim < ActiveRecord::Migration[5.2]
  def change
    add_column :pilgrims, :pilgrim_type, :string
  end
end
