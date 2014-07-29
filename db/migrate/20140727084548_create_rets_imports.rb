class CreateRetsImports < ActiveRecord::Migration
  def change
    create_table :rets_imports do |t|
      t.string :error_message
      t.integer :property_count
      t.string :query
      t.boolean :successful_import

      t.timestamps
    end
  end
end
