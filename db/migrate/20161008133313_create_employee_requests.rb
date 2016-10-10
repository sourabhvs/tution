class CreateEmployeeRequests < ActiveRecord::Migration
  def change
    create_table :employee_requests do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.string :qualification
      t.text :description

      t.timestamps null: false
    end
  end
end
