class EmployeeRequest < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :telephone, presence: true
  validates :qualification, presence: true
end
