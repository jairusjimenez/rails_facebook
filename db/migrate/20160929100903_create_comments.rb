class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
    	t.references :post, index: true, foreign_key: true
    	t.integer :user_id
    	t.text :comment

      t.timestamps
    end
  end
end
