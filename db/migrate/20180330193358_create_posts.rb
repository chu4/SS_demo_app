class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description

      t.timestamps
    end

    add_index :posts, :title
    add_index :posts, :description
  end
end
