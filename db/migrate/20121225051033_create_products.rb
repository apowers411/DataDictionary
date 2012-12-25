class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :vertical
      t.string :inhcontact

      t.timestamps
    end
  end
end
