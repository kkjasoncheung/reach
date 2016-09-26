class RemoveCampuseTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :campuses
  end
end
