class CreateDatasourcesProducts < ActiveRecord::Migration
  def change
    create_table :datasources_products do |t|
      t.integer :datasource_id
      t.integer :product_id

      t.timestamps
    end
  end
end
