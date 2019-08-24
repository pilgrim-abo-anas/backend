class RemoveTypeFromPilgrim < ActiveRecord::Migration[5.2]
  def change
    remove_column :pilgrims, :type, :sting
  end
end
