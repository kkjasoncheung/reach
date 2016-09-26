class AddMembersToClubs < ActiveRecord::Migration[5.0]
  def up
  	remove_column 'clubs', 'number_of_members'
  end

  def down
  	add_column 'clubs', 'number_of_members', :integer
  end
end
