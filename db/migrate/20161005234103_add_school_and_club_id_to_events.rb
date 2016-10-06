class AddSchoolAndClubIdToEvents < ActiveRecord::Migration[5.0]
  def change
  	add_column "events","club_id",:integer
  	add_column "events","school_id",:integer
  end
end
