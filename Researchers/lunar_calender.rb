##########################################################################################
#                                    Lunar Phase                                         #
##########################################################################################
# This is specifically for making everything in a game world revolve around a lunar calender.
# I eventually wanted to expand the features here, but this system relies on global variables
# rather than instance variables.
###########################################################################################

def lunar_cycle
  lunar_phases = [0, 1, 2, 3, 4, 5, 6, 7]

  # The current lunar phase mod 7
  current_phase  = $current_phase % 7
  #$current_phase = $current_phase + 1 % 7

  if    current_phase == lunar_phases[0]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Full Moon. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    $player_hp   = $player_hp
    $player_atk  = $player_atk
    $player_heal =  2

    # Negative Healing ala illness
    #$player_illness = 2
  elsif current_phase == lunar_phases[1]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waning Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    $player_hp   = $player_hp - 2
    $player_atk  = $player_atk + 2
    $player_heal = 2

    # Negative Healing ala illness
    #$player_illness = 2
  elsif current_phase == lunar_phases[2]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: First Quarter. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    $player_hp   = $player_hp  - 4
    $player_atk  = $player_atk + 4
    $player_heal = 2

    # Negative Healing ala illness
    #$player_illness = 2
  elsif current_phase == lunar_phases[3]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waxing Crescent. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    $player_hp   = $player_hp  - 6
    $player_atk  = $player_atk + 6
    $player_heal = 2

    # Negative Healing ala illness
    #$player_illness = 2
  elsif current_phase == lunar_phases[4]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: New Moon. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    $player_hp   = $player_hp  - 8
    $player_atk  = $player_atk + 8
    $player_heal = 2

    # Negative Healing ala illness
    #$player_illness = 8
  elsif current_phase == lunar_phases[5]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waning Crescent. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    $player_hp   = $player_hp  - 5
    $player_atk  = $player_atk + 6
    $player_heal = 2

    # Negative Healing ala illness
    #$player_illness = 6
  elsif current_phase == lunar_phases[6]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Third Quarter. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    $player_hp   = $player_hp  - 3 #  7
    $player_atk  = $player_atk + 8 # 10
    $player_heal = 2

    # Negative Healing ala illness
    #$player_illness = 4
  elsif current_phase == lunar_phases[7]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waning Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    $player_hp   = $player_hp  - 1 # 9
    $player_atk  = $player_atk - 2 # 2
    $player_heal = 2

    # Negative Healing ala illness
    #$player_illness = 2
  end

  sleep(1.5)
end
