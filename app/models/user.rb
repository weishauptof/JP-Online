class User < ApplicationRecord
  validates :name, :instagram, :country, {presence: true}
  
  
  validates :email, 
    presence: true,
    uniqueness: true

  validates :time_zone, inclusion: { in: ActiveSupport::TimeZone.all.map(&:name) }

  validates :password,
    presence: true, 
    length:{minimum: 8}
  has_secure_password

  

end
