class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                                    #不区分大小写
                                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length:{ maximum: 20 }, allow_blank: true                                 
end
