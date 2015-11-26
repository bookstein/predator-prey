class Hare < Animal

  def post_initialize(ecosystem: ecosystem)
    @volume = 1
    @growth = 3
    @adult_size = 5
    @name = "hare"

    @ecosystem.add_animal(self) # automatically adds itself
  end

end
