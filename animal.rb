class Animal

  attr_accessor :volume
  attr_reader :adult_size, :name, :growth

  def initialize(ecosystem)
    @ecosystem = ecosystem
    @ecosystem.add_animal(self) # automatically adds itself
  end

  def eat(prey_name)
    # eat should have to check whether or not there's anything to eat.
    # if eat cannot run (e.g. no food left), this animal dies.
    # otherwise, the prey dies.
    prey = prey_name.to_sym

    if @ecosystem.animals[prey].empty?
      self.die
    else
      @volume += @growth
      @ecosystem.animals[prey].last.die
    end
  end

  def reproduce
    if @volume >= @adult_size
      baby = self.class.new(@ecosystem)
    end

    baby
  end

  def die
    @ecosystem.animals[self.name.to_sym].pop unless self.nil? == true || @ecosystem.animals[self.name.to_sym].empty?
  end
end
