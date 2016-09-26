class AddCampusIdToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column 'users','campus_id', :integer
  end
end
