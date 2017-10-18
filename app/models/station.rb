class Station < ActiveRecord::Base

  def self.alt_fuel
    SearchService.elec_lp
  end
end
