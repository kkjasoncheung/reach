class ChangeDataTypeOfPhone < ActiveRecord::Migration[5.0]
  def up
  	remove_column 'clubs','phone'
  	add_column 'clubs','phone',:string
  end

  def down
  	remove_column 'clubs','phone'
  	add_column 'clubs','phone',:integer
  end
end
