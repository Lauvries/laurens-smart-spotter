# frozen_string_literal: true

class Booking < ApplicationRecord
  has_many :participants
  belongs_to :user
  belongs_to :room

  # Write your code here
  # look through all times and dates for this room
  # if overlap - cant book
  # custom validations in ruby validate_overlap
  # def overlap
  # self.room -> all bookings lookup
  #
end
