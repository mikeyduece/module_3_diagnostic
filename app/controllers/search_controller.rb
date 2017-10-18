class SearchController < ApplicationController

  def index
    @stations = Station.alt_fuel
  end
end
