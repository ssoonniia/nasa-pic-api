class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.text :title
      t.date :date
      t.text :explanation
      t.text :image
      t.string :copyright
      t.timestamps
    end
  end
end
