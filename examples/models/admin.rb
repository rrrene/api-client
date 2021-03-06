class Admin < ApiClient::Base
  self.resource_path = 'users?type=admin'
  self.association = { :groups => 'Group' }

  # Any of this fields can be called to manage rails form.
  attr_accessor :email, :password, :password_confirmation

  # Validations will work as well
  validates :email, :presence => true, :uniqueness => true
  validates :password, :confirmation => true
end