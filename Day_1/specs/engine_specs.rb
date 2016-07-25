require("minitest/autorun")
require("minitest/rg")
require_relative("../engine_class")

class EngineTest < MiniTest::Test

  def setup
    @standard_engine = Engine.new(100, 10, "Standard")
    @turbo_engine = Engine.new(100, 25, "Turbo")
  end

  def test_if_the_car_has_fuel
    assert_equal(100, @standard_engine.fuel_level())
  end

  def test_engine_can_accelerate
    @standard_engine.accelerate(1)
    assert_equal(95, @standard_engine.fuel_level())
  end

  def test_turbo_fuel_consumption
    @turbo_engine.accelerate(1)
    assert_equal(90, @turbo_engine.fuel_level())
  end

end