class Message < ActiveRecord::Base

belongs_to :user
has_one :location

include WillPaginate

  # has_many :user

end
