class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :assign_default_role

  validates :telephone, :presence => {:message => 'please enter valid number'},
                     :numericality => true,
                     :length => { :minimum => 10, :maximum => 15 }

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end
end
