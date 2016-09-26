class RemoveCampusId < ActiveRecord::Migration[5.0]
  def change
  	remove_column 'users','campus_id'
  	remove_column 'clubs','campus_id'
  end
end
