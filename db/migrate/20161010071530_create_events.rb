class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.datetime :date
      t.string :time
      t.text :description

      t.timestamps null: false
    end
  end
end
