class AddCampusIdToClubs < ActiveRecord::Migration[5.0]
  def change
  	add_column 'clubs', 'campus_id', :integer
  end
end
