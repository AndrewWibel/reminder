class User < ActiveRecord::Base
  has_secure_password
  #validations
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :email, :last_name,presence: true
  validates :email, uniqueness: {case_sensitive: false}, :format =>{:with => EMAIL_REGEX} 
  # validates :password, confirmation: true

  #relationships
  has_many :tasks
end
