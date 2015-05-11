class Animal

  attr_accessor :volume
  attr_reader :adult_size, :name, :growth

  def initialize(ecosystem)
    @ecosystem = ecosystem
    @ecosystem.add_animal(self) # automatically adds itself
  end

  def eat(&block)
    @volume += @growth

    if block_given?
      yield
    end
  end

  def reproduce
    if @volume >= @adult_size
      baby = self.class.new(@ecosystem)
    end

    baby
  end

  def die
    if not @ecosystem.animals[self.name.to_sym].empty?
      @ecosystem.animals[self.name.to_sym].pop
    end
  end
end
