class RemoveProductidFromDatasources < ActiveRecord::Migration
  def up
    remove_column :datasources, :product_id
  end

  def down
    add_column :datasources, :product_id, :integer
  end
end
