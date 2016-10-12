class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :report

      t.timestamps null: false
    end
  end
end
