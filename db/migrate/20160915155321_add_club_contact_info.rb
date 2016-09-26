class AddClubContactInfo < ActiveRecord::Migration[5.0]
  def up
  	add_column 'clubs', 'phone',:integer
  	add_column 'clubs','email',:string
  end

  def down
  	remove_column 'clubs','phone'
  	remove_column 'clubs','email'
  end
end
