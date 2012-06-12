class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      
      t.text :comment
      t.integer :user_id
      t.integer :question_id
      
      t.timestamps
    end
  end
end
