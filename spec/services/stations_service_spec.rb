require 'rails_helper'
describe " Station Service  " do
  it 'Can return station data' do
    zip = 80203
    service = StationsService.new
    stations_data = service.get_stations()

    expect(service).to be_an_instance_of(StationsService)

    expect(stations_data).to be_a(Hash)
  end
end
