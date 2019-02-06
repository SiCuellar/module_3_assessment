class StationsFacade
  def initialize(zip)
    @stations_data = StationService.new.get_stations(zip)
  end

  def stations
    @stations_data.map do |station_data|
      Station.new(station_data)
    end
  end
end
