class Message < ActiveRecord::Base

include WillPaginate

  belongs_to :user

end
