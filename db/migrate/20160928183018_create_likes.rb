class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
    	t.integer :user_id
    	t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
