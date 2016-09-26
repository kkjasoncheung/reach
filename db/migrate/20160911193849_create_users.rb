class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :gender
      t.integer :year_of_study

      t.timestamps
    end
  end
  def down
    drop_table 'users'
  end
end
