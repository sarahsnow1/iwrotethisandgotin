class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.string :content
      t.string :title
      t.integer :user_id

      t.timestamps
    end
    add_index :essays, [:user_id, :created_at]
  end
end
