class User < ApplicationRecord

  validates :username,
            presence: true,
            uniqueness: true

  validates :email,
            presence: true,
            uniqueness: true

  def self.build_from_github(auth_hash)
    user       = User.new
    user.uid   = auth_hash[:uid].to_i
    user.provider = 'github'
    user.username  = auth_hash['info']['nickname']
    user.email = auth_hash['info']['email']
    user.save

    return user
  end
end
