class CreateProfilepages < ActiveRecord::Migration
  def change
    create_table :profilepages do |t|
      t.string :vertical
      t.string :url
      t.string :tab
      t.text :description

      t.timestamps
    end
  end
end
