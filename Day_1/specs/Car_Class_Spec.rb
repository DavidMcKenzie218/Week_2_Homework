require("minitest/autorun")
require("minitest/rg")
require_relative("../Car_Class")
require_relative("../engine_class")

class CarTest < MiniTest::Test

  def setup
    @standard_engine = Engine.new(100, 10, "Standard")
    @turbo_engine = Engine.new(100, 25, "Turbo")
    @standard_car = Car.new(0, @standard_engine)
    @turbo_car = Car.new(0, @turbo_engine)
  end

  def test_that_the_car_is_stationary
    assert_equal(0, @standard_car.speed())
  end

  def test_if_the_car_can_accelerate
    @standard_car.accelerate(1)
    assert_equal(10, @standard_car.speed())

  end

  def test_if_car_can_brake
    @standard_car.accelerate(1)
    @standard_car.brake(10)
    assert_equal(0, @standard_car.speed())
  end

  def test_car_cannot_go_below_zero
    @standard_car.accelerate(1)
    @standard_car.brake(10)
    assert_equal(0, @standard_car.speed)
  end

  def test_if_turbo_speed
    @turbo_car.accelerate(1)
    assert_equal(25, @turbo_car.speed())
  end

end