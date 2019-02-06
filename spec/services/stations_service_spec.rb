require 'rails_helper'
describe " Station Service  " do
  it 'Can return station data' do
    zip = 80203
    service = StationService.new
    stations_data = service.get_stations(zip)

    expect(service).to be_an_instance_of(StationService)
    expect(stations_data).to be_a(Array)
    expect(stations_data[0]).to have_key(:fuel_type_code)
    expect(stations_data[0]).to have_key(:station_name)
    expect(stations_data[0]).to have_key(:station_phone)
    expect(stations_data.count).to eq(10)
  end
end
