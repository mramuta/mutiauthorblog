require 'bcrypt'
class User < ActiveRecord::Base
  has_many :entries
  has_many :comments

  def password
    @password ||= BCrypt::Password.new(hash_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hash_pass = @password
  end

end
