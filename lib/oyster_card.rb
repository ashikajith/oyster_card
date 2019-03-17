class OysterCard
  MAX_BALANCE = 90
  MIN_BALANCE = 3
  require './lib/travel'

  attr_accessor :balance

  def initialize(starting_point)
    @travel = Travel.new
    @travel.check_in(starting_point)
  end

  def end_trip(end_point)
    @travel.check_out(end_point)
  end
end
