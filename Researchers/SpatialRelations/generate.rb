require_relative "DungeonCalculator/DungeonCalculator.rb"

## Defines the process for generated small, medium, and large rooms.
def small_dungeon
  DungeonCalculator::Generator.create_small
end

def medium_dungeon
  DungeonCalculator::Generator.create_medium
end

def large_dungeon
  DungeonCalculator::Generator.create_large
end

## Defines process for measuring room size and checking connectivity.
def calculate_room_size
  DungeonCalculator::Measurement.room_type
end

def calculate_room_connectivity
  DungeonCalculator::Measurement.rooms_connected
end

#loop do
#  print "Do you wish you to measure room size, check connectivity, or create a room?"; process = gets.chomp
#
#  if    "create small"       == process; small_dungeon
#  elsif "create medium"      == process; medium_dungeon
#  elsif "create large"       == process; large_dungeon
#  elsif "check connectivity" == process; calculate_room_size
#  elsif "check size"         == process; calculate_room_connectivity
#  elsif "exit"
#    abort
#  else
#    puts ">> Not sure what to measure or create..."
#  end
#end

small_dungeon
