class AddIndexToResidentialProperties < ActiveRecord::Migration
  def change
    add_index :residential_properties, :ml_number
  end
end
