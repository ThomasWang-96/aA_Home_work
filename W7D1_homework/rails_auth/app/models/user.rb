class User < ApplicationRecord
  attr_reader :password


  validates :username, uniqueness:true, presence: true
  validates :password_digest, presence: {message: 'password can not be blank'} 
  validates :password, length: {minimum: 6, allow_nil: true}
  validates :session_token, presence:true

  before_validation :ensure_session_token, uniqueness:true


  def self.find_by_credentials(user_name, password)
    user = User.find_by(username: user_name)
    user.nil ? nil : user.is_password?(password) ? user : nil
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
    self.session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end


  private

  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end



end