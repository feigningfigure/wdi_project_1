class AddMessageIdToLocations < ActiveRecord::Migration
  def change

    add_column :location, :message_id, :integer
  end
end
