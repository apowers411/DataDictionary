class AddDescriptionToDatatable < ActiveRecord::Migration
  def change
    add_column :datatable, :description, :text
  end
end
