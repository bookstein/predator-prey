class Moss
  attr_reader :volume, :name # only read, not set -- later, use attr_accessor

  def initialize(ecosystem)
    # all that initialize should do is set attributes!!
    @volume = 1
    @name = "moss"
    @ecosystem = ecosystem
    @ecosystem.add_animal(self) # automatically adds itself
  end

  def eat
    @volume += 1
  end

  def reproduce
    if @volume > 3 # TODO: don't hardcode this number
      Moss.new(@ecosystem)
    end
  end
end
