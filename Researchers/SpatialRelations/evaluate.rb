require_relative "DungeonCalculator/DungeonCalculator.rb"

def calculate_room_size
  DungeonCalculator::Measurement.room_type
end

def calculate_room_connectivity
  DungeonCalculator::Measurement.rooms_connected
end

print "Do you wish you to measure room size, or check if they're connected?"; process = gets.chomp

if    "Check connectivity" == process; calculate_room_size
elsif "Check size"         == process; calculate_room_connectivity
else
  puts ">> Not sure what to measure..."
end
