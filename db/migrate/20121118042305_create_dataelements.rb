class CreateDataelements < ActiveRecord::Migration
  def change
    create_table :dataelements do |t|
      t.string :originalname
      t.string :devname
      t.string :datatype
      t.text :description
      t.string :devtable
      t.string :analysistype
      t.string :format
      t.text :in_house_formula
      t.text :recode
      t.text :comments

      t.timestamps
    end
  end
end
