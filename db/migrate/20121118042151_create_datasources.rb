class CreateDatasources < ActiveRecord::Migration
  def change
    create_table :datasources do |t|
      t.string :name
      t.string :website
      t.text :description
      t.text :comments

      t.timestamps
    end
  end
end
