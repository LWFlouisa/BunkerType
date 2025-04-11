## Creates three different condition tables.
gamestates = {
  "alive" => "dead",
  "dead"  => "undead",
  "undead" => "alive",
}, {
  "epee"  => "ishi",
  "ishi"  => "bache",
  "bache" => "epee"
}, {
  "player" => "spider",
  "spider" => "enemy",
  "enemy"  => "player",
}

#         alive dead undead
# alive   a,a   a,d  a,u
# dead    d,a   d,d  d,u
# undead  u,a   u,a  u,u

#         epee ishi bache
# epee    e,e  e,i  e,b
# ishi    i,e  i,i  i,b
# bache   b,e  b,i  b,b

#         player spider enemy
# player  p,p    p,s    p,e
# spider  s,p    s,s    s,e
# enemy   e,p    e,s    e,e

possible_states = [
  [["alive",  "alive"], ["alive",  "dead"], ["alive",  "undead"]],
  [["dead",   "alive"], ["dead",   "dead"], ["dead",   "undead"]],
  [["undead", "alive"], ["undead", "dead"], ["undead", "undead"]],
], [
  [["epee",  "epee"], ["epee",  "ishi"], ["epee",  "bache"]],
  [["ishi",  "epee"], ["ishi",  "ishi"], ["ishi",  "bache"]],
  [["bache", "epee"], ["bache", "ishi"], ["bache", "bache"]],
], [
  [["player", "player"], ["player", "spider"], ["player", "enemy"]],
  [["spider", "player"], ["spider", "spider"], ["spider", "enemy"]],
  [["enemy",  "player"], ["enemy",  "spider"], ["enemy", "enemy"]],
]

row_options = [0, 1, 2]
col_options = [0, 1, 2]
arr_options = [0, 1]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

## Assign a random life, weapon, and turn state from a random entry point.
life_state        = possible_states[0][cur_row][cur_col][cur_arr]
weapon_state      = possible_states[1][cur_row][cur_col][cur_arr]
turn_state        = possible_states[2][cur_row][cur_col][cur_arr]

## Assign different conditions state machines.
life_status       = gamestates[0]
battle_conditions = gamestates[1]
turn_order        = gamestates[2]

# Predicts the next life status, battle state, and next turn.
current_status_predictor           = life_status[life_state]
current_battle_condition_predictor = battle_conditions[weapon_state]
current_turn_predictor             = turn_order[turn_state]

system("clear")

puts "~~~"
puts "Current Status"
puts "Curent Life Status: #{life_state}"
puts "Current Battle Choice: #{weapon_state}"
puts "Current Turn: #{turn_state}"
puts "~~~"

if    "alive"  == life_state; print "When the current life status is #{life_state}, "
elsif "dead"   == life_state; print "When the current life status is #{life_state}, "
elsif "undead" == life_state; print "When the current life status is #{life_state}, "
end

if    "epee"  == weapon_state; print "factor in the current battle condition of #{weapon_state} "
elsif "ishi"  == weapon_state; print "factor in the current battle condition of #{weapon_state} "
elsif "bache" == weapon_state; print "factor in the current battle condition of #{weapon_state} "
end

if    "player" == turn_state; puts "during the current #{turn_state} turn."
elsif "spider" == turn_state; puts "during the current #{turn_state} turn."
elsif "enemy"  == turn_state; puts "during the current #{turn_state} turn."
end

puts "~~~"
puts "Next Life Status:   #{current_status_predictor}"
puts "Next Battle Choice: #{current_battle_condition_predictor}"
puts "Next Turn:          #{current_turn_predictor}"
puts "~~~"

if    "alive"  == current_status_predictor; print "When the next life status is #{current_status_predictor}, "
elsif "dead"   == current_status_predictor; print "When the next life status is #{current_status_predictor}, "
elsif "undead" == current_status_predictor; print "When the next life status is #{current_status_predictor}, "
end

if    "epee"  == current_battle_condition_predictor; print "factor in the battle condition of #{current_battle_condition_predictor} "
elsif "ishi"  == current_battle_condition_predictor; print "factor in the battle condition of #{current_battle_condition_predictor} "
elsif "bache" == current_battle_condition_predictor; print "factor in the battle condition of #{current_battle_condition_predictor} "
end

if    "player" == current_turn_predictor; puts "during the #{current_turn_predictor} turn."
elsif "spider" == current_turn_predictor; puts "during the #{current_turn_predictor} turn."
elsif "enemy"  == current_turn_predictor; puts "during the #{current_turn_predictor} turn."
end
