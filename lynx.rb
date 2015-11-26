class Lynx < Animal

  def post_initialize(ecosystem: ecosystem)
    @volume = 1
    @growth = 2
    @adult_size = 8
    @name = "lynx"

    @ecosystem.add_animal(self) # automatically adds itself
  end

end
