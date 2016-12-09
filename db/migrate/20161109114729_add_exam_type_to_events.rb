class AddExamTypeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :exam_type, :string
  end
end
