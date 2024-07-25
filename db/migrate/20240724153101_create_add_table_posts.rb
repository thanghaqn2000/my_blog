class CreateAddTablePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.datetime :deleted_at
      t.belongs_to :author, polymorphic: true
      t.string :title
      t.text :content
      t.integer :category, default: 0
      t.integer :status, default: 0
      t.datetime :published_at

      t.timestamps
    end
  end
end
