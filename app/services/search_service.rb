class SearchService

  def initialize(zip)
    @zip = zip
  end


  def self.find_alt
    @conn = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest") do |faraday|
      faraday.params['api_key'] = ENV['nrel_api']
      faraday.params['location'] = '80203'
    end

require 'pry'; binding.pry
  end

  private
    attr_reader :zip
end
