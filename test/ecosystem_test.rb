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

# see that animals reproduce

# create animals by reproduction, make sure they are added to ecosystem

# create animals, make sure they grow the right amount when they eat

end
