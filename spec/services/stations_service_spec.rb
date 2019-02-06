require 'rails_helper'
describe " Station Service  " do
  it 'Can return station data' do
    zip = 80203
    service = StationService.new
    stations_data = service.get_stations(zip)

    expect(service).to be_an_instance_of(StationService)
    binding.pry
    expect(stations_data).to be_a(Hash)
    expect(stations_data).to have_key(:fuel_stations)
  end
end
