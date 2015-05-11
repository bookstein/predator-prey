require_relative "test_helper"

class EcosystemTest < Minitest::Test

  def setup
    # creates values that can be used for all tests
  end

  def test_create_new_ecosystem_with_animals
    # create new ecosystem, test that correct number of animals were entered
    e = ::Ecosystem.new(10, 5, 2)
    assert_equal 10, e.animals[:moss].length
    assert_equal 5, e.animals[:hare].length
    assert_equal 2, e.animals[:lynx].length
  end

  # create new animals
  def test_create_new_animals
    e = ::Ecosystem.new(10, 5, 2)
    m = ::Moss.new(e)
    h = ::Hare.new(e)
    l = ::Lynx.new(e)
  end

# create animals by reproduction, make sure they are added to ecosystem
  def test_new_animals_added_to_ecosystem
    e = Ecosystem.new(0,0,0)
    m = Moss.new(e)
    h = Hare.new(e)
    l = Lynx.new(e)

    # grow animals to adult size (able to reproduce)
    m.volume = m.adult_size
    h.volume = h.adult_size
    l.volume = l.adult_size

    # reproduce
    m.reproduce
    h.reproduce
    l.reproduce

    # check added to ecosystem
    assert_equal 1, e.animals[:moss].length
    assert_equal 1, e.animals[:hare].length
    assert_equal 1, e.animals[:lynx].length
  end
end
