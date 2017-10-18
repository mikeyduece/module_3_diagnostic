class SearchService

  def initialize(zip)
    @zip = zip
  end


  def self.find_alt
    @conn = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?location=80203&api_key=ENV['nrel_api']")
require 'pry'; binding.pry
  end

  private
    attr_reader :zip
end
