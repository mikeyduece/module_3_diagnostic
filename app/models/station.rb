class Station < ActiveRecord::Base

  def self.alt_fuel
    SearchService.find_alt
  end
end
