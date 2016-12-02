require 'bcrypt'
require 'dm-validations'

class User

  include DataMapper::Resource

  property :id, Serial
  property :email, String, :required => true, :format => :email_address
  property :password_digest, Text

  attr_accessor :password_confirmation
  attr_reader :password

  validates_confirmation_of :password
  validates_presence_of :email

  def password_method=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

end
