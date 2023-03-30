class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :name
      t.string :color, default: '#F9FDA9'
      t.text :content

      t.timestamps
    end
  end
end
