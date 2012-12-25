class AddProductidToDatasources < ActiveRecord::Migration
  def change
    add_column :datasources, :productid, :integer
    add_column :datasources, :update, :date
    add_column :datasources, :method, :string
  end
end
