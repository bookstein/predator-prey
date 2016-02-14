require_relative "test_helper"

class HareTest < Minitest::Test
  describe "Hare Class" do

    before do
      @e = ::Ecosystem.new(0,0,0)
    end

    describe "if no moss is available" do
      it "dies" do
        h = Hare.new(ecosystem: @e)
        h.eat("moss")

        assert_send([h, :die])
      end
    end

  end
end