class AddBodyToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :Body, :text
  end
end
