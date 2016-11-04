class CreateWorkshopRequests < ActiveRecord::Migration
  def change
    create_table :workshop_requests do |t|
      t.string :name
      t.string :collage
      t.string :email
      t.string :telephone

      t.timestamps null: false
    end
  end
end
