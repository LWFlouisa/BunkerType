## Standard Vortex
#      0     1     2     3     4     5
#0  Epee  Wait  Ishi  Wait Bache  Wait
#1  Wait  Epee  Wait  Ishi  Wait Bache
#2 Bache  Wait  Epee  Wait  Ishi  Wait
#3  Wait Bache  Wait  Epee  Wait  Ishi
#4  Ishi  Wait Bache  Wait  Epee  Wait
#5  Wait  Ishi  Wait Bache Wait  Epee
#
# Row 2 Column 2
# Row 1 Column 2
# Row 0 Column 1
# Row 1 Column 0
# Row 2 Column 0
# Row 3 Column 0
# Row 4 Column 0
# Row 5 Column 1
# Row 5 Column 2
# Row 5 Column 3
# Row 4 Column 4
# Row 3 Culmmn 4
# Row 2 Column 5
# Row 1 Column 5
# Row 0 Column 4

def standard_behaviours
  row = File.read("lib/enemy/ai/row.txt").strip.to_i
  col = File.read("lib/enemy/ai/col.txt").strip.to_i
  enemy_choice  = File.read("lib/enemy/ai/choice.txt").strip.to_i

  enemy_choices = ["Epee", "Wait", "Ishi", "Wait", "Bache", "Wait"]

  limited_loop =  enemy_choice.size.to_i

  chosen_row = row[enemy_choice].strip.to_i
  chosen_col = col[enemy_choice].strip.to_i

  if    chosen_row == 2 and chosen_col == 2; enemy_final_choice =  "Epee"; @cchoice = enemy_final_choice
  elsif chosen_row == 1 and chosen_col == 2; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 0 and chosen_col == 1; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 1 and chosen_col == 0; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 2 and chosen_col == 0; enemy_final_choice = "Bache"; @cchoice = enemy_final_choice
  elsif chosen_row == 3 and chosen_col == 0; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 4 and chosen_col == 0; enemy_final_choice =  "Ishi"; @cchoice = enemy_final_choice
  elsif chosen_row == 5 and chosen_col == 1; enemy_final_choice =  "Ishi"; @cchoice = enemy_final_choice
  elsif chosen_row == 5 and chosen_col == 2; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 5 and chosen_col == 3; enemy_final_choice = "Bache"; @cchoice = enemy_final_choice
  elsif chosen_row == 4 and chosen_col == 4; enemy_final_choice =  "Epee"; @cchoice = enemy_final_choice
  elsif chosen_row == 3 and chosen_col == 4; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 2 and chosen_col == 5; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 1 and chosen_col == 5; enemy_final_choice = "Bache"; @cchoice = enemy_final_choice
  elsif chosen_row == 0 and chosen_col == 4; enemy_final_choice = "Bache"; @cchoice = enemy_final_choice
  else
    puts "The enemy defaults to waiting for its next turn."
  end

  File.open("lib/enemy/ai/choice.txt", "w") { |f|
    enemy_choice = enemy_choice + 1

    f.puts enemy_choice
  }
end

def reversed_behaviours
  row = File.read("lib/enemy/ai/row.txt").strip.to_i
  col = File.read("lib/enemy/ai/col.txt").strip.to_i
  enemy_choice  = File.read("lib/enemy/ai/choice.txt").strip.to_i

  enemy_choices = ["Epee", "Wait", "Ishi", "Wait", "Bache", "Wait"].reverse

  limited_loop =  enemy_choice.size.to_i

  chosen_row = row[enemy_choice].strip.to_i
  chosen_col = col[enemy_choice].strip.to_i

  if    chosen_row == 2 and chosen_col == 2; enemy_final_choice =  "Epee"; @cchoice = enemy_final_choice
  elsif chosen_row == 1 and chosen_col == 2; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 0 and chosen_col == 1; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 1 and chosen_col == 0; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 2 and chosen_col == 0; enemy_final_choice = "Bache"; @cchoice = enemy_final_choice
  elsif chosen_row == 3 and chosen_col == 0; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 4 and chosen_col == 0; enemy_final_choice =  "Ishi"; @cchoice = enemy_final_choice
  elsif chosen_row == 5 and chosen_col == 1; enemy_final_choice =  "Ishi"; @cchoice = enemy_final_choice
  elsif chosen_row == 5 and chosen_col == 2; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 5 and chosen_col == 3; enemy_final_choice = "Bache"; @cchoice = enemy_final_choice
  elsif chosen_row == 4 and chosen_col == 4; enemy_final_choice =  "Epee"; @cchoice = enemy_final_choice
  elsif chosen_row == 3 and chosen_col == 4; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 2 and chosen_col == 5; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 1 and chosen_col == 5; enemy_final_choice = "Bache"; @cchoice = enemy_final_choice
  elsif chosen_row == 0 and chosen_col == 4; enemy_final_choice = "Bache"; @cchoice = enemy_final_choice
  else
    puts "The enemy defaults to waiting for its next turn."
  end

  File.open("lib/enemy/ai/choice.txt", "w") { |f|
    enemy_choice = enemy_choice + 1

    f.puts enemy_choice
  }
end

def shuffled_behaviours
  row = File.read("lib/enemy/ai/row.txt").strip.to_i
  col = File.read("lib/enemy/ai/col.txt").strip.to_i
  enemy_choice  = File.read("lib/enemy/ai/choice.txt").strip.to_i

  enemy_choices = ["Epee", "Wait", "Ishi", "Wait", "Bache", "Wait"].shuffle

  limited_loop =  enemy_choice.size.to_i

  chosen_row = row[enemy_choice].strip.to_i
  chosen_col = col[enemy_choice].strip.to_i

  if    chosen_row == 2 and chosen_col == 2; enemy_final_choice =  "Epee"; @cchoice = enemy_final_choice
  elsif chosen_row == 1 and chosen_col == 2; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 0 and chosen_col == 1; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 1 and chosen_col == 0; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 2 and chosen_col == 0; enemy_final_choice = "Bache"; @cchoice = enemy_final_choice
  elsif chosen_row == 3 and chosen_col == 0; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 4 and chosen_col == 0; enemy_final_choice =  "Ishi"; @cchoice = enemy_final_choice
  elsif chosen_row == 5 and chosen_col == 1; enemy_final_choice =  "Ishi"; @cchoice = enemy_final_choice
  elsif chosen_row == 5 and chosen_col == 2; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 5 and chosen_col == 3; enemy_final_choice = "Bache"; @cchoice = enemy_final_choice
  elsif chosen_row == 4 and chosen_col == 4; enemy_final_choice =  "Epee"; @cchoice = enemy_final_choice
  elsif chosen_row == 3 and chosen_col == 4; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 2 and chosen_col == 5; enemy_final_choice =  "Wait"; @cchoice = enemy_final_choice
  elsif chosen_row == 1 and chosen_col == 5; enemy_final_choice = "Bache"; @cchoice = enemy_final_choice
  elsif chosen_row == 0 and chosen_col == 4; enemy_final_choice = "Bache"; @cchoice = enemy_final_choice
  else
    puts "The enemy defaults to waiting for its next turn."
  end

  File.open("lib/enemy/ai/choice.txt", "w") { |f|
    enemy_choice = enemy_choice + 1

    f.puts enemy_choice
  }
end

def streamlined_behaviours
  def ai_guess
    player_actions = File.readlines("lib/data/user/player_actions.txt")
    total_actions  = player_actions.size.to_i

    chosen_action = File.read("lib/data/user/chosen_action.txt").strip.to_i

    total_actions.times do
      observed_player_behaviours = File.readlines("lib/data/ai/observed_player_actions.txt")
      observed_player_behaviours = observed_player_behaviours.shuffle
      current_ai_action          = observed_player_behaviours.sample.to_s

      if player_actions[chosen_action] == current_ai_action
        puts ">> The AI has countered your action. Now searches for specific files..."
      else
        puts ">> The AI has chosen incorrectly."
      end

      sleep(1.5)
    end
  end

  def ai_learn
    player_actions = File.readlines("lib/data/user/player_actions.txt")
    total_actions  = player_actions.size.to_i

    ai_choice = 0

    chosen_action = File.read("lib/data/user/chosen_action.txt").strip.to_i

    total_actions.times do
      possible_actions  = File.readlines("lib/data/ai/possible_player_actions.txt")
      possible_actions  = possible_actions.shuffle
      current_ai_action = possible_actions.sample.to_s

      if player_actions[chosen_action] == current_ai_action
        File.open("lib/data/ai/observed_player_actions.txt", "a") { |f|
          f.puts player_actions[chosen_action]
        }

        puts ">> The AI has countered your action. Now searches for specific files..."
      else
        puts ">> The AI has chosen incorrectly."
      end

      sleep(1.5)
    end
  end

  behaviours = [ai_guess, ai_learn]
  behaviours.sample
end

enemy_behaviours = [
  standard_behaviours,
  reversed_behaviours,
  shuffled_behaviours,
  streamedlined_behaviours,
]

enemy_behaviours.sample
