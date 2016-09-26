class CreateClubsUsersJoins < ActiveRecord::Migration[5.0]
  def up
    create_table :clubs_users, :id=>false do |t|

    	#creating references
    	t.integer "user_id"
    	t.integer "club_id"

      t.timestamps
    end

    add_index :clubs_users, ["user_id","club_id"]
  end

  def down
  	drop_table :clubs_users
  end
end
