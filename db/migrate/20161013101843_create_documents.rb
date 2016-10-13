class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :report
      t.string :name

      t.timestamps null: false
    end
  end
end
