# Animal is an abstract superclass.
# It allows inheritors to supply specializations,
# and provides hook methods to avoid 'super' and reduce coupling
class Animal

  attr_accessor :volume
  attr_reader :adult_size, :name, :growth

  def initialize(args={})
    # all that initialize should do is set attributes!!
    @ecosystem = args[:ecosystem]

    post_initialize(args)
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
      baby = self.class.new(ecosystem: @ecosystem)
    end

    baby
  end

  def die
    @ecosystem.animals[self.name.to_sym].pop unless self.nil?
  end

  def add_to_ecosystem
    @ecosystem.animals[self.name.to_sym] << self
  end

  # this is a hook that all subclasses should override
  def post_initialize(args)
    raise "Must add animal to ecosystem"
  end
end
