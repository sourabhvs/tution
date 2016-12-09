class ApplyTution < ActiveRecord::Base
  validates :name, presence: true
  validates :place, presence: true
  validates :s_class, presence: true
  validates :collage, presence: true
  validates :telephone, :presence => {:message => 'please enter valid number'},
                     :numericality => true,
                     :length => { :minimum => 10, :maximum => 15 }

  belongs_to :event
end
