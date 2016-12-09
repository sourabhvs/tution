class AddEventIdInApplyTutions < ActiveRecord::Migration
  def change
    add_column :apply_tutions, :event_id, :integer
  end
end
