## purpose of test helper:
### load files
### configure libraries (ie, change Minitest behavior)
### load other libraries (ie, YAML config)

require 'minitest/autorun' # `require` => with relation to the paths in our $LOAD_PATH

# add root directory to LOAD_PATH
$LOAD_PATH << File.expand_path(__FILE__ + "/../..")
# creates fully qualified path -- "/Users/ebookstein..."
# __FILE__ is the file that ruby is *executing right now*

# executing directory is not part of LOAD_PATH by default. but we've added it now.
require 'ecosystem'
require 'animal'
require 'moss'
require 'hare'
require 'lynx'

