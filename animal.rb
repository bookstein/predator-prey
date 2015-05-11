class Animal

  attr_accessor :volume
  attr_reader :adult_size, :name, :growth

  def initialize(ecosystem)
    @ecosystem = ecosystem
    @ecosystem.add_animal(self) # automatically adds itself
  end

  def eat
    @volume += @growth
  end

  def reproduce
    if @volume >= @adult_size
      baby = self.class.new(@ecosystem)
    end

    baby
  end
end
