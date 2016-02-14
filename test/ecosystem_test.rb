require_relative "test_helper"

class EcosystemTest < Minitest::Test
  describe "Ecosystem Class" do

    describe "when new ecosytem created" do
      it "adds initial animal counts" do
        e = Ecosystem.new(10, 5, 2)
        assert_equal 10, e.animals[:moss].length
        assert_equal 5, e.animals[:hare].length
        assert_equal 2, e.animals[:lynx].length
      end
    end

  end
end
