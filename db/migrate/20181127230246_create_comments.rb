class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.text :author
      t.text :picture_id
    end
  end
end
