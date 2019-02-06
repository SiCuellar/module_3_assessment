class StationService

  def get_stations(zip)
    get_json("v1/nearest.json?fuel_type=LPG,ELEC&location=80203&limit=10&api_key=#{ENV["API_KEY"]}&radius=6")[:fuel_stations]
  end

  private

  def get_json(path)
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    @conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations") do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end
end
