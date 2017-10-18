class SearchService

  def self.find_alt
    @conn = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json") do |faraday|
      faraday.params['api_key'] = ENV['nrel_api']
      faraday.params['location'] = '80203'
    end
    response = @conn.body
    JSON.parse(response)
  end

end
