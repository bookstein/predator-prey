class Lynx
  attr_reader :volume, :name

  def initialize(ecosystem)
    # all that initialize should do is set attributes!!
    @volume = 1
    @name = "lynx"
    @ecosystem = ecosystem
    @ecosystem.add_animal(self) # automatically adds itself
  end

  def eat
    @volume += 1
  end

  def reproduce
    if @volume > 3 # TODO: don't hardcode this number
      Lynx.new(@ecosystem)
    end
  end
end