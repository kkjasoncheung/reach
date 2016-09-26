class CreateClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :clubs do |t|
      t.string :clubname
      t.text :description
      t.integer :number_of_members
      t.string :president

      t.timestamps
    end
  end
end
