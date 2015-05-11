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

  e = Ecosystem.new(200, 10, 2)

  while e.years < 1 # not e.animals[:moss].empty?
    e.print_environment

    e.animals[:moss].each do |moss|
      moss.eat
    end

    e.animals[:hare].each do |hare|
      hare.eat("moss")
      # Tried passing in a block to #eat: { e.animals[:moss].last.die } <-- but this breaks if list is empty - no method #die on nil:NilClass
    end

    e.animals[:lynx].each do |lynx|
      lynx.eat("hare")
    end

    e.change_season
  end

end
