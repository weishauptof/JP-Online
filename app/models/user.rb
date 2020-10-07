class User < ApplicationRecord
  validates :name, :instagram, :country, {presence: true}
  has_secure_password
  
  validates :email, 
    presence: true,
    uniqueness: true

  validates :password,
    presence: true, 
    length:{minimum: 8}

  validates :time_zone, inclusion: { in: ActiveSupport::TimeZone.all.map(&:name) }
  validates :time_zone , {presence: true}

  

end
