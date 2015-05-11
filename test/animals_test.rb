require_relative "test_helper"

class AnimalTest < Minitest::Test

  def setup
    # creates values that can be used for all tests
    @e = ::Ecosystem.new(0,0,0)
  end

  def test_animals_grow_by_eating
    m = Moss.new(@e)
    initial_volume = m.volume
    m.eat
    final_volume = m.volume

    assert_equal initial_volume + m.growth, final_volume
  end

  def test_cannot_reproduce_before_adult
    m = Moss.new(@e)
    baby = m.reproduce

    assert baby.nil? == true
  end

  def test_reproduction_after_adult
    m = Moss.new(@e)
    m.volume = m.adult_size
    baby = m.reproduce

    assert baby.nil? == false
  end
end
