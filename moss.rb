class Moss < Animal

  def post_initialize(ecosystem: ecosystem)!
    @volume = 1
    @adult_size = 2
    @growth = 1
    @name = "moss"

    add_to_ecosystem
  end

  def eat
    @volume += @growth
  end

end
