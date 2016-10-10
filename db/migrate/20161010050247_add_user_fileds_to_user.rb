class AddUserFiledsToUser < ActiveRecord::Migration
  def change
    add_column :users, :telephone, :string
    add_column :users, :name, :string
    add_column :users, :done, :boolean, :default => false
  end
end
