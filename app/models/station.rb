class Station < ApplicationRecord
  attr_reader :name,
              :address,
              :fuel_type,
              :atime
  def initialize(station_data)
    @name = station_data[:station_name]
    @address = station_data[:street_address]
    @fuel_type = station_data[:fuel_type_code]
    @atime = station_data[:access_days_time_fr]
    # @distance = station_data[:station_name]
  end
end
