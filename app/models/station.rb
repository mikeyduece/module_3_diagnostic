class Station < ActiveRecord::Base

  def self.alt_fuel
    SearchParser.find_alt.sort.reverse
  end
end
