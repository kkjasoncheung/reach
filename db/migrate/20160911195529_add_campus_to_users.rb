class AddCampusToUsers < ActiveRecord::Migration[5.0]
  def up
  	add_column 'users','campus', :string
  end

  def down
  	remove_column 'users','campus'
  end
end
