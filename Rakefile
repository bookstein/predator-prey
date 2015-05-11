task :console do
  # order only matters if there are dependencies
  require_relative "ecosystem"
  require_relative "animal"
  require_relative "moss" # --> "require" brings things into global Ruby namespace
  require_relative "hare"
  require_relative "lynx"
  require "irb"
  ARGV.clear
  IRB.start

end

task :run_sim do
  require_relative "ecosystem"
  require_relative "animal"
  require_relative "moss"
  require_relative "hare"
  require_relative "lynx"

  e = Ecosystem.new(100, 10, 2)

  while e.years < 1 # not e.animals[:moss].empty?

    # hares eat the moss
    e.animals[:hare].each do |hare|
      hare.eat
      hare.reproduce
    end

    e.print_environment
    e.change_season
  end

end
