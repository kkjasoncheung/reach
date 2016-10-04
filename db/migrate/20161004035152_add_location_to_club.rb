class AddLocationToClub < ActiveRecord::Migration[5.0]
  def change
  	add_column 'clubs','location',:string
  end
end
