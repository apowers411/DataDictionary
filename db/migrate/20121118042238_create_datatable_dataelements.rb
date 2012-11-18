class CreateDatatableDataelements < ActiveRecord::Migration
  def change
    create_table :datatable_dataelements do |t|
      t.integer :datatable_id
      t.integer :dataelement_id

      t.timestamps
    end
  end
end
