class Ecosystem
  # tracks TIME, SUNLIGHT, ANIMALS
  attr_reader :season, :sunlight, :years, :animals

  def initialize
    @sunlight = 100
    @amount_of_sunlight_change = 25
    @season = 0
    @years = 0
    @animals = {
      moss: [],
      hare: [],
      lynx: []
    }
  end

  def change_season
    if @season == 0 || @season == 1
      @sunlight += @amount_of_sunlight_change
    elsif @season == 2 || @season == 3
      @sunlight -= @amount_of_sunlight_change
    end
    @season == 3 ? start_new_year : @season += 1

    @season
  end

  def start_new_year
    @season = 0
    @years += 1

    @years
  end

  def add_animal(animal)
    @animals[animal.name.to_sym] << animal
  end

end
