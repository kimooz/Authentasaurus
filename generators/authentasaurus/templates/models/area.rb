class Area < ActiveRecord::Base
  has_many :permissions, :dependent => :destroy

  # Check that everything is there
  validates_presence_of :target
  # Check foreign keys
  validates_associated :permissions
  
end
