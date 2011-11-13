class Course < ActiveRecord::Base
  # Custom Validation
  validates_date :start_date
  validates_date :end_date
  
  # Relationships
  has_and_belongs_to_many :users
end
