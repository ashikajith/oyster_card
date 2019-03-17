class Station
  require 'pry'
  @@stations = []
  attr_accessor :zone, :name

  def initialize(hash)
    @name = hash[:name]
    @zone = hash[:zone]
  end

  def self.load_station_list
    station_list.each do |zone, stations|
      stations.each do |station|
        @@stations << Station.new(zone: zone, name: station)
      end
    end
  end

  def self.station_list
    {
      1 => [
        'Old Street', 'Angel', 'Pimlico', 'Tower Gateway',
        'Aldgate East', 'Euston', 'Vauxhall', 'Elephant & Castle',
        'Borough', 'London Bridge', 'Marylebone', 'Edgware Road'
      ],
      2 => [
        'All Saints', 'Arsenal', 'Barons Court', 'Belsize Park',
        'Brockley', 'Blackwall', 'Canada Water', 'Devons Road'
      ],
      3 => [
        'Acton Central', 'Acton Town', 'Barnes', 'Beckton',
        'Blackheath'
      ]
    }
  end

  def self.stations
    @@stations
  end
end
