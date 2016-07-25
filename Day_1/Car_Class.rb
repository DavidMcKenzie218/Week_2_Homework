class Car

  attr_reader(:speed)

  def initialize(speed, engine_type)
    @speed = speed
    @engine = engine_type
    
  end

  def accelerate(time_accelerating)
    @speed = (@engine.acceleration_rate*time_accelerating)
    @engine.accelerate(time_accelerating)
  end

  def brake(braking_amount)
    if @speed>=braking_amount
      @speed -=braking_amount
    else
      @speed = 0
    end
  end

end