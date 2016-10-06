class CreateEventsUsersJoins < ActiveRecord::Migration[5.0]
  def up
    create_table :events_users, :id=>false do |t|

      t.integer "user_id"
      t.integer "event_id"
      t.timestamps
    end
    add_index :events_users, ["user_id","event_id"]
  end

  def down
  	drop_table :events_users
  end
end
