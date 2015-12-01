class Hare < Animal

  def post_initialize(ecosystem: ecosystem)
    @volume = 1
    @growth = 3
    @adult_size = 5
    @name = "hare"

    add_to_ecosystem
  end

end
