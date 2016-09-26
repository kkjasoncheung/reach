class AddSchoolId < ActiveRecord::Migration[5.0]
  def change
  	add_column 'users', 'school_id',:integer
  	add_column 'clubs', 'school_id',:integer
  end
end
