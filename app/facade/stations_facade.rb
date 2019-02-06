class StationsFacade
  def initialize(zip)
    @stations_data = StationService.new.get_stations(zip)

  end

  def stations
    binding.pry
  end


end
