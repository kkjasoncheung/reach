class CreateCategoriesClubsJoins < ActiveRecord::Migration[5.0]
  def up
    create_table :categories_clubs, :id=>false do |t|
    	t.integer 'club_id'
    	t.integer 'category_id'
      t.timestamps
    end
    add_index :categories_clubs, ["club_id","category_id"]
  end

  def down
  	drop_table :categories_clubs
  end
end
