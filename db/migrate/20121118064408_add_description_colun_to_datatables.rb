class AddDescriptionColunToDatatables < ActiveRecord::Migration
  def change
    add_column :datatables, :description, :text
  end
end
