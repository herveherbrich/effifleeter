class User < ApplicationRecord
  has_many :appointments
  has_many :cars, through: :appointments
end
