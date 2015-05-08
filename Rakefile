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
