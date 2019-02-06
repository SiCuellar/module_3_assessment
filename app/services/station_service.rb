class StationService

  def get_stations(zip)
    get_json("/v1.json?fuel_type=E85,ELEC&state=CA&limit=2&api_key=#{ENV["API_KEY"]}&format=JSON")
  end

  private

  def get_json(path)
    response = conn.get(path)
    binding.pry
  end

  def conn
    @conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations") do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end
end
