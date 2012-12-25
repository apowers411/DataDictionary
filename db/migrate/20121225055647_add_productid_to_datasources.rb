class AddProductidToDatasources < ActiveRecord::Migration
  def change
    add_column :datasources, :product_id, :integer
    add_column :datasources, :lastupdate, :date
    add_column :datasources, :method, :string
  end
end
