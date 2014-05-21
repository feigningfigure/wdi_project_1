class Location < ActiveRecord::Base

  belongs_to :message
  belongs_to :user

  #attr_accessible :address, :latitude, :longitude
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, :if => :address_changed?

  def get_latitude
    self.latitude.round(4)
  end


  def get_longitude
    self.longitude.round(4)
  end

  # has_many :user

end
