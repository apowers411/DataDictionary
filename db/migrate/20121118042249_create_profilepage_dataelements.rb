class CreateProfilepageDataelements < ActiveRecord::Migration
  def change
    create_table :profilepage_dataelements do |t|
      t.integer :profilepage_id
      t.integer :dataelement_id
      t.text :devformula
      t.date :lastupdated
      t.text :comments

      t.timestamps
    end
  end
end
