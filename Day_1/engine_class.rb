class Engine

  attr_reader(:fuel_level,:acceleration_rate)

  def initialize(fuel, acceleration_rate, engine_type)
    @fuel_level = fuel
    @engine_type = engine_type
    @acceleration_rate = acceleration_rate
  end

  def accelerate(accelerating_time)
    case @engine_type
      when "Standard"
        @fuel_level -= (5*accelerating_time)
      when "Turbo"
        @fuel_level -= (10*accelerating_time)
    end
  end
end