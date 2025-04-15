module DungeonCalculator
  class Generator
    def self.create_room
      #system("clear")

      # #######
      # # #####
      # ## ####
      # ### ###
      # #### ##
      # ##### #

      horizontal_walls = [
        [["#######", "#######"], ["#######", "# #####"], ["#######", "## ####"], ["#######", "### ###"], ["#######", "#### ##"], ["#######", "##### #"]],
        [["# #####", "#######"], ["# #####", "# #####"], ["# #####", "## ####"], ["# #####", "### ###"], ["# #####", "#### ##"], ["# #####", "##### #"]],
        [["## ####", "#######"], ["## ####", "# #####"], ["## ####", "## ####"], ["## ####", "### ###"], ["## ####", "#### ##"], ["## ####", "##### #"]],
        [["### ###", "#######"], ["### ###", "# #####"], ["### ###", "## ####"], ["### ###", "### ###"], ["### ###", "#### ##"], ["### ###", "##### #"]],
        [["#### ##", "#######"], ["#### ##", "# #####"], ["#### ##", "## ####"], ["#### ##", "### ###"], ["#### ##", "#### ##"], ["#### ##", "##### #"]],
        [["##### #", "#######"], ["##### #", "# #####"], ["##### #", "## ####"], ["##### #", "### ###"], ["##### #", "#### ##"], ["##### #", "##### #"]],
      ]

      horizontal_row_options = [0, 1, 2, 3, 4, 5]
      horizontal_col_options = [0, 1, 2, 3, 4, 5]
      horizontal_arr_options = [0, 1]

      horizontal_cur_row = horizontal_row_options.sample
      horizontal_cur_col = horizontal_col_options.sample
      horizontal_cur_arr = horizontal_arr_options.sample

      current_horizontal = horizontal_walls[horizontal_cur_row][horizontal_cur_col][horizontal_cur_arr]

      # #.....#
      # .......

      verticle_walls = [
        [["#.....#", "#.....#"], ["#.....#", "......."]],
        [[".......", "#.....#"], [".......", "......."]],
      ]

      verticle_row_options = [0, 1]
      verticle_col_options = [0, 1]
      verticle_arr_options = [0, 1]

      ver_cur_row = verticle_row_options.sample
      ver_cur_col = verticle_col_options.sample
      ver_cur_arr = verticle_arr_options.sample

      current_verticle = verticle_walls[ver_cur_row][ver_cur_col][ver_cur_arr]

      possible_spacing = [
        "       ",
        "              ",
        "                     ",
      ]

      current_spacing = possible_spacing.sample

      puts current_spacing + current_horizontal

      5.times do
        puts current_spacing + current_verticle
      end   

      puts current_spacing + current_horizontal

      puts " "
    end

    def self.create_small
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_room
    end

    def self.create_medium
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_room
    end

    def self.create_large
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_room
    end

    ## NPC and Monster Placement
    def self.create_innkeeper_layout
      horizontal_walls = [
        [["#######", "#######"], ["#######", "# #####"], ["#######", "## ####"], ["#######", "### ###"], ["#######", "#### ##"], ["#######", "##### #"]],
        [["# #####", "#######"], ["# #####", "# #####"], ["# #####", "## ####"], ["# #####", "### ###"], ["# #####", "#### ##"], ["# #####", "##### #"]],
        [["## ####", "#######"], ["## ####", "# #####"], ["## ####", "## ####"], ["## ####", "### ###"], ["## ####", "#### ##"], ["## ####", "##### #"]],
        [["### ###", "#######"], ["### ###", "# #####"], ["### ###", "## ####"], ["### ###", "### ###"], ["### ###", "#### ##"], ["### ###", "##### #"]],
        [["#### ##", "#######"], ["#### ##", "# #####"], ["#### ##", "## ####"], ["#### ##", "### ###"], ["#### ##", "#### ##"], ["#### ##", "##### #"]],
        [["##### #", "#######"], ["##### #", "# #####"], ["##### #", "## ####"], ["##### #", "### ###"], ["##### #", "#### ##"], ["##### #", "##### #"]],
      ]

      horizontal_row_options = [0, 1, 2, 3, 4, 5]
      horizontal_col_options = [0, 1, 2, 3, 4, 5]
      horizontal_arr_options = [0, 1]

      horizontal_cur_row = horizontal_row_options.sample
      horizontal_cur_col = horizontal_col_options.sample
      horizontal_cur_arr = horizontal_arr_options.sample

      current_horizontal = horizontal_walls[horizontal_cur_row][horizontal_cur_col][horizontal_cur_arr]

      # #I....#
      # #.I...#
      # #..I..#
      # #...I.#
      # #....I#

      verticle_walls = [
        [["#I....#", "#I....#"], ["#I....#", "#.I...#"], ["#I....#", "#..I..#"], ["#I....#", "#...I.#"], ["#I....#", "#....I"]],
        [["#.I...#", "#I....#"], ["#.I...#", "#.I...#"], ["#.I...#", "#..I..#"], ["#.I...#", "#...I.#"], ["#.I...#", "#....I"]],
        [["#..I..#", "#I....#"], ["#..I..#", "#.I...#"], ["#..I..#", "#..I..#"], ["#..I..#", "#...I.#"], ["#..I..#", "#....I"]],
        [["#...I.#", "#I....#"], ["#...I.#", "#.I...#"], ["#...I.#", "#..I..#"], ["#...I.#", "#...I.#"], ["#...I.#", "#....I"]],
        [["#....I#", "#I....#"], ["#....I#", "#.I...#"], ["#....I#", "#..I..#"], ["#....I#", "#...I.#"], ["#....I#", "#....I"]],
      ]

      verticle_row_options = [0, 1, 2, 3, 4]
      verticle_col_options = [0, 1, 2, 3, 4]
      verticle_arr_options = [0, 1]

      ver_cur_row = verticle_row_options.sample
      ver_cur_col = verticle_col_options.sample
      ver_cur_arr = verticle_arr_options.sample

      current_verticle = verticle_walls[ver_cur_row][ver_cur_col][ver_cur_arr]

      possible_spacing = [
        "       ",
        "              ",
        "                     ",
      ]

      current_spacing = possible_spacing.sample

      puts current_spacing + current_horizontal

      5.times do
        puts current_spacing + current_verticle
      end   

      puts current_spacing + current_horizontal

      puts " "
    end
 
    def self.create_shoecarpetner_layout
      horizontal_walls = [
        [["#######", "#######"], ["#######", "# #####"], ["#######", "## ####"], ["#######", "### ###"], ["#######", "#### ##"], ["#######", "##### #"]],
        [["# #####", "#######"], ["# #####", "# #####"], ["# #####", "## ####"], ["# #####", "### ###"], ["# #####", "#### ##"], ["# #####", "##### #"]],
        [["## ####", "#######"], ["## ####", "# #####"], ["## ####", "## ####"], ["## ####", "### ###"], ["## ####", "#### ##"], ["## ####", "##### #"]],
        [["### ###", "#######"], ["### ###", "# #####"], ["### ###", "## ####"], ["### ###", "### ###"], ["### ###", "#### ##"], ["### ###", "##### #"]],
        [["#### ##", "#######"], ["#### ##", "# #####"], ["#### ##", "## ####"], ["#### ##", "### ###"], ["#### ##", "#### ##"], ["#### ##", "##### #"]],
        [["##### #", "#######"], ["##### #", "# #####"], ["##### #", "## ####"], ["##### #", "### ###"], ["##### #", "#### ##"], ["##### #", "##### #"]],
      ]

      horizontal_row_options = [0, 1, 2, 3, 4, 5]
      horizontal_col_options = [0, 1, 2, 3, 4, 5]
      horizontal_arr_options = [0, 1]

      horizontal_cur_row = horizontal_row_options.sample
      horizontal_cur_col = horizontal_col_options.sample
      horizontal_cur_arr = horizontal_arr_options.sample

      current_horizontal = horizontal_walls[horizontal_cur_row][horizontal_cur_col][horizontal_cur_arr]

      # #I....#
      # #.I...#
      # #..I..#
      # #...I.#
      # #....I#

      verticle_walls = [
        [["#S....#", "#S....#"], ["#S....#", "#.S...#"], ["#S....#", "#..S..#"], ["#S....#", "#...S.#"], ["#S....#", "#....S"]],
        [["#.S...#", "#S....#"], ["#.S...#", "#.S...#"], ["#.S...#", "#..S..#"], ["#.S...#", "#...S.#"], ["#.S...#", "#....S"]],
        [["#..S..#", "#S....#"], ["#..S..#", "#.S...#"], ["#..S..#", "#..S..#"], ["#..S..#", "#...S.#"], ["#..S..#", "#....S"]],
        [["#...S.#", "#S....#"], ["#...S.#", "#.S...#"], ["#...S.#", "#..S..#"], ["#...S.#", "#...S.#"], ["#...S.#", "#....S"]],
        [["#....S#", "#S....#"], ["#....S#", "#.S...#"], ["#....S#", "#..S..#"], ["#....S#", "#...S.#"], ["#....S#", "#....S"]],
      ]

      verticle_row_options = [0, 1, 2, 3, 4]
      verticle_col_options = [0, 1, 2, 3, 4]
      verticle_arr_options = [0, 1]

      ver_cur_row = verticle_row_options.sample
      ver_cur_col = verticle_col_options.sample
      ver_cur_arr = verticle_arr_options.sample

      current_verticle = verticle_walls[ver_cur_row][ver_cur_col][ver_cur_arr]

      possible_spacing = [
        "       ",
        "              ",
        "                     ",
      ]

      current_spacing = possible_spacing.sample

      puts current_spacing + current_horizontal

      5.times do
        puts current_spacing + current_verticle
      end   

      puts current_spacing + current_horizontal

      puts " "
    end

    def self.create_monstervet_layout
      horizontal_walls = [
        [["#######", "#######"], ["#######", "# #####"], ["#######", "## ####"], ["#######", "### ###"], ["#######", "#### ##"], ["#######", "##### #"]],
        [["# #####", "#######"], ["# #####", "# #####"], ["# #####", "## ####"], ["# #####", "### ###"], ["# #####", "#### ##"], ["# #####", "##### #"]],
        [["## ####", "#######"], ["## ####", "# #####"], ["## ####", "## ####"], ["## ####", "### ###"], ["## ####", "#### ##"], ["## ####", "##### #"]],
        [["### ###", "#######"], ["### ###", "# #####"], ["### ###", "## ####"], ["### ###", "### ###"], ["### ###", "#### ##"], ["### ###", "##### #"]],
        [["#### ##", "#######"], ["#### ##", "# #####"], ["#### ##", "## ####"], ["#### ##", "### ###"], ["#### ##", "#### ##"], ["#### ##", "##### #"]],
        [["##### #", "#######"], ["##### #", "# #####"], ["##### #", "## ####"], ["##### #", "### ###"], ["##### #", "#### ##"], ["##### #", "##### #"]],
      ]


      horizontal_row_options = [0, 1, 2, 3, 4, 5]
      horizontal_col_options = [0, 1, 2, 3, 4, 5]
      horizontal_arr_options = [0, 1]

      horizontal_cur_row = horizontal_row_options.sample
      horizontal_cur_col = horizontal_col_options.sample
      horizontal_cur_arr = horizontal_arr_options.sample

      current_horizontal = horizontal_walls[horizontal_cur_row][horizontal_cur_col][horizontal_cur_arr]

      # #I....#
      # #.I...#
      # #..I..#
      # #...I.#
      # #....I#

      verticle_walls = [
        [["#M....#", "#M....#"], ["#M....#", "#.M...#"], ["#M....#", "#..M..#"], ["#M....#", "#...M.#"], ["#M....#", "#....M#"]],
        [["#.M...#", "#M....#"], ["#.M...#", "#.M...#"], ["#.M...#", "#..M..#"], ["#.M...#", "#...M.#"], ["#.M...#", "#....M#"]],
        [["#..M..#", "#M....#"], ["#..M..#", "#.M...#"], ["#..M..#", "#..M..#"], ["#..M..#", "#...M.#"], ["#..M..#", "#....M#"]],
        [["#...M.#", "#M....#"], ["#...M.#", "#.M...#"], ["#...M.#", "#..M..#"], ["#...M.#", "#...M.#"], ["#...M.#", "#....M#"]],
        [["#....M#", "#M....#"], ["#....M#", "#.m...#"], ["#....M#", "#..M..#"], ["#....M#", "#...m.#"], ["#....M#", "#....M#"]],
      ]

      verticle_row_options = [0, 1, 2, 3, 4]
      verticle_col_options = [0, 1, 2, 3, 4]
      verticle_arr_options = [0, 1]

      ver_cur_row = verticle_row_options.sample
      ver_cur_col = verticle_col_options.sample
      ver_cur_arr = verticle_arr_options.sample

      current_verticle = verticle_walls[ver_cur_row][ver_cur_col][ver_cur_arr]

      possible_spacing = [
        "       ",
        "              ",
        "                     ",
      ]

      current_spacing = possible_spacing.sample

      puts current_spacing + current_horizontal

      5.times do
        puts current_spacing + current_verticle
      end   

      puts current_spacing + current_horizontal

      puts " "
    end

    ## Different Village Relationships
    def self.create_village_layout_1
      DungeonCalculator::Generator.create_innkeeper_layout
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_shoecarpetner_layout
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_monstervet_layout
    end

    def self.create_village_layout_2
      DungeonCalculator::Generator.create_monstervet_layout
      DungeonCalculator::Generator.create_innkeeper_layout
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_shoecarpetner_layout
      DungeonCalculator::Generator.create_room
    end

    def self.create_village_layout_3
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_monstervet_layout
      DungeonCalculator::Generator.create_innkeeper_layout
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_shoecarpetner_layout
    end

    def self.create_village_layout_4
      DungeonCalculator::Generator.create_shoecarpetner_layout
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_monstervet_layout
      DungeonCalculator::Generator.create_innkeeper_layout
      DungeonCalculator::Generator.create_room
    end

    def self.create_village_layout_5
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_shoecarpetner_layout
      DungeonCalculator::Generator.create_room
      DungeonCalculator::Generator.create_monstervet_layout
      DungeonCalculator::Generator.create_innkeeper_layout
    end

    def self.create_village
      #                         create_village_layout1 create_village_lagout2 create_village_layout3 create_village_layout4 create_village_layout5
      # create_village_layout1  cvl 1, cvl 1           cvl 1, cvl 2           cvl 1, cvl 3           cvl 1, cvl 4           cvl 1, cvl 5
      # create_village_layout2
      # create_village_layout3
      # create_village_layout4
      # create_village_layout5

      possible_villages = [
        [["CVL1", "CVL1"], ["CVL1", "CVL2"], ["CVL1", "CVL3"], ["CVL1", "CVL4"], ["CVL1", "CVL5"]],
        [["CVL2", "CVL1"], ["CVL2", "CVL2"], ["CVL2", "CVL3"], ["CVL2", "CVL4"], ["CVL2", "CVL5"]],
        [["CVL3", "CVL1"], ["CVL3", "CVL2"], ["CVL3", "CVL3"], ["CVL3", "CVL4"], ["CVL3", "CVL5"]],
        [["CVL4", "CVL1"], ["CVL4", "CVL2"], ["CVL4", "CVL3"], ["CVL4", "CVL4"], ["CVL4", "CVL5"]],
        [["CVL5", "CVL1"], ["CVL5", "CVL2"], ["CVL5", "CVL3"], ["CVL5", "CVL4"], ["CVL5", "CVL5"]],
      ]

      row_options = [0, 1, 2, 3, 4]
      col_options = [0, 1, 2, 3, 4]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_layout = possible_villages[cur_row][cur_col][cur_arr]

      if    "CVL1" == current_layout; DungeonCalculator::Generator.create_village_layout_1
      elsif "CVL2" == current_layout; DungeonCalculator::Generator.create_village_layout_2
      elsif "CVL3" == current_layout; DungeonCalculator::Generator.create_village_layout_3
      elsif "CVL4" == current_layout; DungeonCalculator::Generator.create_village_layout_4
      elsif "CVL5" == current_layout; DungeonCalculator::Generator.create_village_layout_5
      else
        puts ">> Not such layout is possible."
      end
    end
  end

  class Measurement
    def self.room_type
      require "naive_bayes"

      room_labeler = NaiveBayes.new(:small, :medium, :large)

      ## Room types
      small_room  = File.read("_rooms/generated_rooms/small_room.txt")
      medium_room = File.read("_rooms/generated_rooms/medium_room.txt")
      large_room  = File.read("_rooms/generated_rooms/large_room.txt")

      ## Train on rooms
      room_labeller.train(:small,   small_room, "word")
      room_labeller.train(:medium, medium_room, "word")
      room_labeller.train(:large,   large_room, "word")

      print "What room would you like to analyze? >> "; analyze = gets.chomp

      room_to_analyze = File.readlines("_input/#{analyze}.txt")

      print ">> This room is #{room_labeller.classify(room_to_analyze)}"

      classification = room_labeller.classify(room_to_analyze)

      result = classification[0].to_s

      if    result == "small";  puts " Consider making it larger, or part of a larger dungeon."
      elsif result == "medium"; puts " A room that's just about the right size, but needs some editing.'"
      elsif result == "large";  puts " Consider making the room slightly smaller, as this may take up more memory."
      else
        puts "I can't tell the exact size of the generated room, or it hasn't been generated yet.'"
      end
    end

    def self.rooms_connected
      require "naive_bayes"

      room_types = NaiveBayes.new(:not_connected, :connected)

      # Room Types
      connected_room    = File.read("_rooms/generated_rooms/connected_room.txt")
      disconnected_room = File.read("_rooms/generated_rooms/disconnected_room.txt")

      # Train on rooms
      room_types.train(:not_connected, disconnected_room, "word")
      room_types.train(:connected,     connected_room,    "word")

      print "What room would you like to analyze? >> "; analyze = gets.chomp

      room_to_analyze = File.readlines("_input/#{analyze}.txt")

      print ">> This room is #{room_types.classify(room_to_analyze)}"

      classification = room_types.classify(room_to_analyze)

      result = classification[0].to_s

      if    result == "not_connected"; puts " Consider making drawing bridges to connect some of the rooms."
      elsif result ==     "connected"; puts " Rooms seem to be satisfactorily connected."
      else
        puts " Can't easily determine whether the rooms are connected.'"
      end
    end
  end
end
