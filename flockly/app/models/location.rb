class Location < ActiveRecord::Base

  belongs_to :message

  #attr_accessible :address, :latitude, :longitude
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, :if => :address_changed?

  # has_many :user

end
