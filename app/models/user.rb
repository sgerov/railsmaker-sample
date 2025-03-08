class User < ApplicationRecord
  include Clearance::User

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = SecureRandom.hex(10)
    end
  end
end
