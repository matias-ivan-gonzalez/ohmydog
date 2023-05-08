class User < ActiveRecord::Base
    validates :name, presence: true
    validates :surname, presence: true
    validates :email, presence: true uniqueness: true
    validates :password, presence: true
    validates :address, presence: true,
    validates :phone, presence: true, length: { minimum: 8 }
  end