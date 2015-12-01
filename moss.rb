class Moss < Animal

  def post_initialize(ecosystem: ecosystem)!
    @volume = 1
    @adult_size = 3 # if this is 2 --> infinite explosion of babies!
    @growth = 1
    @name = "moss"

    add_to_ecosystem
  end

  def eat
    @volume += @growth
  end

end
