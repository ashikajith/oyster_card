class Travel
  attr_accessor :start_point, :end_point
  require './lib/station'
  def initialize
    @stations = Station.load_station_list
  end

  def check_in(starting_point)
    self.start_point = starting_point
  end

  def check_out(start_point, end_point)
    @start_point = start_point
    @end_point = end_point
    fetch_tariff
  end

  def fetch_tariff
    start_zone = fetch_zone @start_point
    end_zone = fetch_zone @start_point
    case num = (start_zone - end_zone).abs
    when 1
      6
    when 2
      10
    else
      3
    end
  end

  def fetch_zone(station_name)
    @stations.find(name: station_name).peek.zone
  end
end
