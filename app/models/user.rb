class User < ActiveRecord::Base

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates     :first_name, presence: true, length: { maximum: 30 }
  validates     :last_name,  presence: true, length: { maximum: 30 }
  validates     :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates     :password, presence: true, length: { minimum: 6 }

  before_save   { self.email = email.downcase }

  has_secure_password

  def name
    first_name + ' ' + last_name
  end

end
