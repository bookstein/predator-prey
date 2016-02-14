require_relative "test_helper"

class MossTest < Minitest::Test
  describe "Moss Class" do

    describe "eats" do
      it "unconditionally grows in volume" do
        m = Moss.new(ecosystem: @e)
        initial_volume = m.volume
        m.eat
        final_volume = m.volume

        assert_equal initial_volume + m.growth, final_volume
      end
    end

  end
end