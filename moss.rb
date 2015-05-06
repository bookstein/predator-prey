class Moss
  attr_reader :volume # only read, not set -- later, use attr_accessor

  def initialize(ecosystem)
    # all that initialize should do is set attributes!!
    @volume = 1
    @ecosystem = ecosystem # pass ecosystem as array for now
    @ecosystem << self # automatically adds itself
  end

  def eat
    @volume += 1
  end

  def reproduce
    Moss.new(@ecosystem)
  end
end
