class SearchParser

  def self.find_alt
    alt = SearchService.find_alt
    fuels = alt['fuel_stations'].find_all do |fuel|
      fuel['fuel_type_code'] == 'ELEC' ||
        fuel['fuel_type_code'] == "LPG"
    end
    fuels.map do |fuel|
      Station.create(name: fuel['station_name'], access: fuel['access_days_times'],
                 distance: fuel['distance'], fuel_type: fuel['fuel_type_code'])
    end
  end

end
