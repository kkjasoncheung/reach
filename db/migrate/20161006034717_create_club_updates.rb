class CreateClubUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :club_updates do |t|
      t.text :content
      t.string :title
      t.integer :club_id
      t.timestamps
    end
  end
end
