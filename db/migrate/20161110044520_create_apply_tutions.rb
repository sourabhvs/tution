class CreateApplyTutions < ActiveRecord::Migration
  def change
    create_table :apply_tutions do |t|
      t.string :name
      t.string :collage
      t.string :s_class
      t.string :percentage
      t.string :telephone
      t.string :place
      t.text :description

      t.timestamps null: false
    end
  end
end
