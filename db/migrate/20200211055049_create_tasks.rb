class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :content
      t.string :name
      t.string :email
      t.string :password_digest
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
