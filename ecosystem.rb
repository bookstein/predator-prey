class Ecosystem
  # tracks TIME, SUNLIGHT, ANIMALS
  attr_reader :season, :years, :animals

  def initialize(moss, hare, lynx)
    @season = 0
    @years = 0
    @animals = {
      moss: [],
      hare: [],
      lynx: []
    }

    moss.times { Moss.new(self) }
    hare.times { Hare.new(self) }
    lynx.times { Lynx.new(self) }
  end

  def change_season
    @season == 3 ? start_new_year : @season += 1
  end

  def start_new_year
    @season = 0
    @years += 1

    @years
  end

  def add_animal(animal)
    @animals[animal.name.to_sym] << animal
  end

  def print_environment
    sym = { moss: ".",
            hare: "+",
            lynx: "&"
          }

    puts "Season #{@season}, Year #{@years}"

    @animals.each do |animal, array|
      puts array.collect { |a| sym[a.name.to_sym] }.join
    end

    puts "\n\n"
  end
end
