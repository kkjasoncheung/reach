class AddStudentNumber < ActiveRecord::Migration[5.0]
  def up
  	add_column 'users','student_number',:bigint
  end

  def down
  	remove_column 'users','student_number'
  end
end
