require_relative "test_helper"

class AnimalTest < Minitest::Test
  describe "Animal Abstract Class" do

    before do
      @e = ::Ecosystem.new(0,0,0)
    end

    describe "on creation" do
      it "adds itself to the ecosystem" do
        m = Moss.new(ecosystem: @e)
        assert_equal 1, @e.animals[:moss].size
      end
    end

    describe "at juvenile size" do
      it "does not reproduce" do
        m = Moss.new(ecosystem: @e)
        baby = m.reproduce
        assert baby.nil? == true
      end
    end

    describe "at adult size" do
      it "reproduces" do
        m = Moss.new(ecosystem: @e)
        m.volume = m.adult_size
        baby = m.reproduce

        assert baby.nil? == false
        assert_equal 2, @e.animals[:moss].size
      end
    end

    describe "when it dies" do
      it "removes itself from the ecosystem" do
        initial_pop = @e.animals[:moss].size
        m = Moss.new(ecosystem: @e)
        m.die
        final_pop = @e.animals[:moss].size

        assert initial_pop == final_pop
      end
    end

  end
end
