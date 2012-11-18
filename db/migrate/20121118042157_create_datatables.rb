class CreateDatatables < ActiveRecord::Migration
  def change
    create_table :datatables do |t|
      t.integer :datasource_id
      t.string :name
      t.string :location
      t.integer :year
      t.text :importdetail

      t.timestamps
    end
  end
end
