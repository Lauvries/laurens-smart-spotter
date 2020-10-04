# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
    @password = attributes[:password]
    @password_confirmation = attributes[:password_confirmation]
  end

  # write your code here

  has_many :bookings, dependent: :destroy
  validates_presence_of :name, :email, :password, :password_digest

  # write your code here
end
