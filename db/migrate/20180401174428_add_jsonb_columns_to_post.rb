class AddJsonbColumnsToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :options, :jsonb, null: false, default: {}
  end
end
