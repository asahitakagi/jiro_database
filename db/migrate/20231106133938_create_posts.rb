class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :call
      t.string :taku
      t.string :address
      t.string :men
      t.string :tiket
      t.string :rblink
      t.string :sns
      t.string :tabelink

      t.timestamps
    end
  end
end
