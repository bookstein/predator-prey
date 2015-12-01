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

    moss.times { Moss.new(ecosystem: self) }
    hare.times { Hare.new(ecosystem: self) }
    lynx.times { Lynx.new(ecosystem: self) }
  end

  def change_season
    @season == 3 ? start_new_year : @season += 1
  end

  def start_new_year
    @season = 0
    @years += 1

    @years
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
