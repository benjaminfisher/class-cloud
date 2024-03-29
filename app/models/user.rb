class User < ActiveRecord::Base
  # Custom Validation
  validates :name, :presence => true, :length => {:maximum => 100}, :uniqueness => true
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  
  # Relationships
  has_and_belongs_to_many :courses
end
