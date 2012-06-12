class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.string :marital_status
      t.string :race
      t.string :degree
      t.string :occupation
      t.integer :birth_year
      t.string :languages
      t.string :birth_place
      t.string :mother_birth_place
      t.string :father_birth_place
      
      t.text :before_internment
      t.text :during_internment
      t.text :after_internment
      
      t.string :photo_path
      t.string :login
      t.string :password_digest
      t.string :salt
      
      t.timestamps
    end
  end
end