class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.text :info
      t.string :location
      t.string :time
      t.string :free

      t.timestamps
    end
  end
end
