class Lynx < Animal

  def post_initialize(ecosystem: ecosystem)
    @volume = 1
    @growth = 2
    @adult_size = 8
    @name = "lynx"

    add_to_ecosystem
  end

end
